westurner/dotvim
=================
| Desc: dotvim_ ``~/.vimrc`` text editor configuration dotfiles_.
| Src: git https://github.com/westurner/dotvim
| Docs: https://westurner.github.io/dotfiles/usage#vim
| Topic: https://en.wikipedia.org/wiki/Vim_(text_editor)

.. | Src: hg https://bitbucket.org/westurner/dotvim # dulwich / git push --mirror

.. _vim: https://en.wikipedia.org/wiki/Vim_(text_editor)
.. _dotfiles: https://github.com/westurner/dotfiles
.. _dotvim: https://github.com/westurner/dotvim


Install
--------
Clone the dotvim_ repository::

   REPO_DEST=${VIRTUAL_ENV:+"${VIRTUAL_ENV}/src/"}dotvim
   #REPO_DEST=${__DOTFILES}/etc/vim   # dotfiles install

   ## Clone
   git clone https://github.com/westurner/dotvim $REPO_DEST
   #git clone ssh://git@github.com/westurner/dotvim $REPO_DEST

   ## symlink
   ln -s ${__DOTFILES}/etc/vim/vimrc ~/.vimrc
   ln -s ${__DOTFILES}/etc/vim ~/.vim

   ## vim
   source ~/.vimrc


Usage
------
Three files:

   * `vimrc`_ -- ViM configuration (symlink to ``~/.vimrc``)
   * `vimrc.full.bundles.vimrc`_ -- plugins config (
     ``:VundleInstall``, ``:VundleUpdate``)
   * `vimrc.tinyvim.bundles.vimrc`_ -- tinyvim vimpager config (
     ``:VundleInstall``, ``:VundleUpdate``)


.. _vimrc: https://github.com/westurner/dotvim/blob/master/vimrc
.. _vimrc.full.bundles.vimrc: https://github.com/westurner/dotvim/blob/master/vimrc.full.bundles.vimrc
.. _vimrc.tinyvim.bundles.vimrc: https://github.com/westurner/dotvim/blob/master/vimrc.tinyvim.bundles.vimrc
.. _Makefile: https://github.com/westurner/dotvim/blob/master/Makefile 


Dotvim Makefile_::

   # Show comments with numbered lines
   make help

   # Test
   make test

   # Show comments with numbered lines (plugins, shortcuts)
   make list_vimrc_comments

   # List keyboard mapping comments (shortcuts)
   make list_vimrc_shortcuts

   # Install dotfiles and plugins for the current user
   make install

Usage
---------------
| Docs: https://westurner.github.io/dotfiles/usage#vim

``make help`` prints ``vimrc*`` comments.

``:ListMappings`` ``vimgrep``s ``vimrc*`` comments::

   [...]

   "  :DotvimReload    --  source ~/.vimrc
   "  :DotvimHelp      --  vimgrep vimrc* comments
   "  :ListMappings    --  vimgrep vimrc* comments
   "  :map             --  list actual mappings
   "  :scriptnames     --  list scripts and plugins
   "  :set             --  list all nondefault options

   [...]

