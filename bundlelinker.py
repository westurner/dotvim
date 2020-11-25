#!/usr/bin/env python
# -*- coding: utf-8 -*-
from __future__ import print_function

"""
bundlelinker
=============
Make ``./bundle`` include symlinks to vim bundles in ``./bundles.all``
according to the bundles listed in ``./Bundlefile``.

Use Cases:

- Isolate which plugin(s) are causing performance issues
- Create plugin subsets

Usage:

.. code:: bash

    ./bundlelinker.py --help

    cd ~/.vim
    ./bundlelinker.py
    ./bundlelinker.py -y

    # These are equivalent:
    ./bundlelinker.py -p ~/.vim
    ./bundlelinker.py -f ~/.vim/Bundlefile --all ~/.vim/bundles.all -b ~/.vim/bundle

"""
import itertools
import json
import logging
import os
import shutil
import sys
import unittest

from pathlib import Path


class Tasks:
    SYMLINK = "symlink"
    MKDIR = "mkdir"
    RM = "remove"
    INSTALL = "install"


def generate_bundle_sets(
    *, bundle_dir, bundles_all_dir, bundlefile,
):
    """
        Keyword Arguments:
            bundle_dir (str or Path): directory to create symlinks in
                (e.g. ./bundle)
            bundles_all_dir (str or Path): where bundles are installed
                (e.g. ./bundles.all)
            bundlefile (str or Path): ./bundlefile (e.g. Bundlefile)
        Returns:
            dict: bundles, grouped tasks, and tasks as a list
    """

    log = logging.getLogger()

    ctx = {}
    ctx["bundlefile_entries"] = []
    ctx["bundles_all"] = []
    ctx["installed"] = []
    ctx["unnecessarily_installed"] = None
    ctx["symlink_these"] = []
    ctx["install_and_symlink_these"] = []
    ctx["tasks"] = []

    _bundlefile = Path(bundlefile)
    if not _bundlefile.exists():
        raise Exception(f"bundlefile does not exist: {_bundlefile!r}")
    with open(_bundlefile, "r") as f:
        ctx["bundlefile_entries"] = f.read().splitlines()

    _bundles_all_dir = Path(bundles_all_dir)
    if not _bundles_all_dir.exists():
        err = f"bundles_all_dir does not exist: {_bundles_all_dir!r}"
        log.info(err)
        # raise Exception(err)
    else:
        ctx["bundles_all"] = list(Path(_bundles_all_dir).iterdir())

    _bundle_dir = Path(bundle_dir)
    if not _bundle_dir.exists():
        err = f"bundle_dir does not exist: {_bundle_dir!r}"
        log.info(err)
        # raise Exception(err)
    else:
        ctx["installed"] = list(Path(_bundle_dir).iterdir())

    installed_names = {f.name: f for f in ctx["installed"]}
    bundles_all_names = {f.name: f for f in ctx["bundles_all"]}
    for bundle_name in ctx["bundlefile_entries"]:
        if bundle_name not in installed_names:
            _task = dict(
                bundle_dir_path=_bundle_dir / bundle_name,
                bundles_all_path=_bundles_all_dir / bundle_name,
            )
            if bundle_name in bundles_all_names:
                task = dict(task=Tasks.SYMLINK, bundle_name=bundle_name)
                ctx["symlink_these"].append(task)
            else:
                task = dict(task=Tasks.INSTALL, bundle_name=bundle_name)
                ctx["install_and_symlink_these"].append(task)

            task.update(_task)
            ctx["tasks"].append(task)

    ctx["unnecessarily_installed"] = [
        (_bundle_dir / bundlepath.name)
        for bundlepath in ctx["installed"]
        if bundlepath.name not in ctx["bundlefile_entries"]
    ]
    return ctx


def to_json(obj):
    return json.dumps(obj, default=str, indent=2)


def arrange_bundles(
    *, bundle_dir, bundles_all_dir, bundlefile, make_changes_to_fs=False
):
    """create symlinks in order to run a subset of vim bundles

    Keyword Arguments:
        bundle_dir (str): ./bundle
        bundles_all_dir (str): ./bundles.all
        bundlefile (str): ./Bundlefile
        make_changes_to_fs (bool): whether to make changes

    Returns:
        int: number of changes made or how many changes would be made
    """
    _bundles_all_dir = Path(bundles_all_dir)
    _bundle_dir = Path(bundle_dir)
    _bundlefile = Path(bundlefile)

    bundlesets = generate_bundle_sets(
        bundle_dir=_bundle_dir,
        bundles_all_dir=_bundles_all_dir,
        bundlefile=_bundlefile,
    )

    tasks = []

    if not _bundle_dir.exists():
        tasks.append(dict(action=Tasks.MKDIR, path=bundle_dir))
    # tasks = itertools.chain(tasks, bundlesets["tasks"])
    tasks.extend(bundlesets["tasks"])

    log = logging.getLogger()
    log.debug("# Bundlesets and Tasks")
    log.debug(to_json(bundlesets))
    log.info("# Tasks")
    log.info(to_json(bundlesets["tasks"]))

    to_install = []
    changes_made = []
    if make_changes_to_fs:
        for task in tasks:
            log.debug(task)
            taskname = task.get("task")
            if taskname == Tasks.MKDIR:
                log.info(f"mkdir {task['path']!r}")
                os.mkdir(task["path"])
                changes_made.append(task)
            elif taskname == Tasks.SYMLINK:
                log.info(
                    f"symlink {task['bundle_dir_path']!r} to {task['bundles_all_path']!r}"
                )
                os.symlink(
                    ".." / task["bundles_all_path"], task["bundle_dir_path"]
                )
                changes_made.append(task)
            elif taskname == Tasks.RM:
                log.info(f"rm {task['path']}")
                shutil.rmtree(task["path"])
                changes_made.append(task)
            elif taskname == Tasks.INSTALL:
                to_install.append(taskname)
                log.info(
                    f"{task['bundles_all_path']!r} does not exist.\n"
                    "Install it manually or with a Bundle in a vimrc."
                )

        for task in bundlesets["install_and_symlink_these"]:
            log.info(
                f"{task['bundles_all_path']!r} does not exist.\n"
                "Install it manually or with a Bundle in a vimrc."
            )
    return dict(
        tasks=tasks,
        changes_made=changes_made,
        bundlesets=bundlesets,
        to_install=to_install,
    )


class Test_bundlelinker(unittest.TestCase):
    def setUp(self):
        here = Path(__file__).parent
        self.args = dict(
            bundle_dir=here / "bundle",
            bundles_all_dir=here / "bundles.all",
            bundlefile=here / "Bundlefile",
        )

    def test_arrange_bundles(self):
        output = arrange_bundles(**self.args)
        assert "tasks" in output
        assert "changes_made" in output
        assert "to_install" in output
        assert len(output["changes_made"]) == 0

    # def test_arrange_bundles_and_modify(self):
    #     output = arrange_bundles(make_changes_to_fs=True, **self.args)


def main(argv=None):
    """
    bundlelinker main function

    Keyword Arguments:
        argv (list): commandline arguments (e.g. sys.argv[1:])
    Returns:
        int:
    """
    import logging
    import optparse

    prs = optparse.OptionParser(
        usage="%prog [-v] [-y] [-p <prefix>] [-b <path>] [--all <path>] [-f <Bundlefile>]"
    )

    prs.add_option("-p", "--prefix", dest="prefix", default="~/.vim")

    prs.add_option("--all", dest="bundles_all_dir", help="bundles.all/")
    prs.add_option("-b", dest="bundle_dir", help="bundle/")
    prs.add_option(
        "-f", dest="bundlefile", help="Bundlefile",
    )

    prs.add_option(
        "-y",
        "--yes",
        "--make-changes",
        dest="make_changes_to_fs",
        action="store_true",
        help="make changes to bundle_dir",
    )

    prs.add_option(
        "--Pu",
        "--print-unnecessarily-installed",
        dest="print_unnecessarily_installed",
        action="store_true",
        help="Print things in bundle_dir that aren't in Bundlefile",
    )

    prs.add_option(
        "-v", "--verbose", dest="verbose", action="store_true",
    )
    prs.add_option(
        "-q", "--quiet", dest="quiet", action="store_true",
    )
    prs.add_option(
        "-t", "--test", dest="run_tests", action="store_true",
    )

    argv = list(argv) if argv else []
    (opts, args) = prs.parse_args(args=argv)
    loglevel = logging.INFO
    if opts.verbose:
        loglevel = logging.DEBUG
    elif opts.quiet:
        loglevel = logging.ERROR
    logging.basicConfig(level=loglevel)
    log = logging.getLogger("main")
    log.debug("argv: %r", argv)
    log.debug("opts: %r", opts)
    log.debug("args: %r", args)

    if opts.run_tests:
        sys.argv = [sys.argv[0]] + args
        return unittest.main()

    EX_OK = 0

    if opts.prefix:
        prefix = Path(os.path.expanduser(opts.prefix) if opts.prefix else ".")
        opts.bundle_dir = (
            Path(opts.bundle_dir) if opts.bundle_dir else prefix / "bundle"
        )
        opts.bundles_all_dir = (
            Path(opts.bundles_all_dir)
            if opts.bundles_all_dir
            else prefix / "bundles.all"
        )
        opts.bundlefile = (
            Path(opts.bundlefile) if opts.bundlefile else prefix / "Bundlefile"
        )

    log.debug("opts: %r", opts)
    output = arrange_bundles(
        bundle_dir=opts.bundle_dir,
        bundles_all_dir=opts.bundles_all_dir,
        bundlefile=opts.bundlefile,
        make_changes_to_fs=opts.make_changes_to_fs,
    )
    if opts.print_unnecessarily_installed:
        for pth in output["bundlesets"]["unnecessarily_installed"]:
            print(pth)
    else:
        log.info(f"Done.")
        log.info(f"Plan: {len(output['tasks'])} changes.")
        log.info(
            f"Made: {len(output['changes_made'])} changes. "
            "(-y to make changes)"
        )
        to_install_count = len(output["to_install"])
        if to_install_count:
            log.info(f"To manually install: {to_install_count}. See logs")

    return EX_OK


if __name__ == "__main__":
    sys.exit(main(argv=sys.argv[1:]))
