westurner/dotvim
=================
| Desc: dotvim_ ``~/.vimrc`` text editor configuration dotfiles_.
| Src: git https://github.com/westurner/dotvim
| Docs: https://westurner.org/dotfiles/usage#vim
| Topic: `<https://en.wikipedia.org/wiki/Vim_(text_editor)>`__


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
     ``scripts/mktinyvim.sh``)


.. _vimrc: https://github.com/westurner/dotvim/blob/master/vimrc
.. _vimrc.full.bundles.vimrc: https://github.com/westurner/dotvim/blob/master/vimrc.full.bundles.vimrc
.. _vimrc.tinyvim.bundles.vimrc: https://github.com/westurner/dotvim/blob/master/vimrc.tinyvim.bundles.vimrc
.. _Makefile: https://github.com/westurner/dotvim/blob/master/Makefile 


Dotvim Makefile_::

   # Show comments with numbered lines
   make help

   # Install dotfiles and plugins for the current user
   make install

   # Test
   make test

   # Print comments with numbered lines (^"\s)
   make list_vimrc_comments

   # Print keyboard mapping comments (^"\s\s)
   make list_vimrc_shortcuts


Usage
---------------
| Docs: https://westurner.org/dotfiles/usage#vim

``make help`` prints ``vimrc*`` comments.

``:ListMappings`` ``vimgreps`` ``vimrc*`` comments::

   [...]

   "  :DotvimReload    --  source ~/.vimrc
   "  :DotvimHelp      --  vimgrep vimrc* comments
   "  :ListMappings    --  vimgrep vimrc* comments
   "  :map             --  list actual mappings
   "  :scriptnames     --  list scripts and plugins
   "  :set             --  list all nondefault options

   [...]


Vim
====
| Wikipedia: `<https://en.wikipedia.org/wiki/Vim_(text_editor)>`__
| Homepage: http://www.vim.org/
| Docs: http://www.vim.org/docs.php
| Source: hg https://vim.googlecode.com/hg/

* https://github.com/scrooloose/nerdtree
* https://github.com/westurner/dotvim


Vimium
-------
| Wikipedia: https://en.wikipedia.org/wiki/Vimium
| Homepage: https://vimium.github.io/
| Source: git https://github.com/philc/vimium

* https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en


Vimperator
-----------
| Wikipedia: https://en.wikipedia.org/wiki/Vimperator
| Homepage: http://www.vimperator.org/
| Source: https://github.com/vimperator/vimperator-labs

* https://addons.mozilla.org/en-US/firefox/addon/vimperator/


Wasavi
-------
| Homepage: http://appsweets.net/wasavi/
| Docs: http://appsweets.net/wasavi/
| Source: https://github.com/akahuku/wasavi

* https://chrome.google.com/webstore/detail/wasavi/dgogifpkoilgiofhhhodbodcfgomelhe
* https://addons.opera.com/en/extensions/details/wasavi/
* https://addons.mozilla.org/en-US/firefox/addon/wasavi/


Fonts
=======

* `<https://www.google.com/fonts#ChoosePlace:select/Collection:Source+Sans+Pro|Ubuntu+Mono|Droid+Sans|Fira+Mono|Ubuntu|Droid+Sans+Mono|Libre+Baskerville|Source+Code+Pro|Ubuntu+Condensed|Droid+Serif|Roboto|Roboto+Condensed|Roboto+Mono|Roboto+Slab|Source+Serif+Pro>`__
* `fonts.zip <https://www.google.com/fonts/download?kit=_Adf4-WhHej-sE7xvVehE2gYFTLuiQ0Xrr1ICtn4sgfpf0t9BZUIiDiKzT6nkta6EZPD1TvUcgbxXABVfCcZ6mHt8ctaCMCd_Wc5C_wjhJSS0ZBmQ8ycamsHRYHa0yYF6MfgUfXzxEj15i2wt6XfcxSvSI2ISvD3pWMhB-7yGqXOyHsJ9NW1GACvLv3i_puNCyWHyPaNoFkGoYwlHtB7aKx5h4EEYHECCsdvWx7M6oOYrBY59zzB2GpTcLtKNx_T5M6cYHKpCBlID5SqTqdPgqS3XrpYp_h7CyvsfAHiPPfClUJGDCrlHSoZ-MS0ftePQ2WBUu9AUgaaogWfKxMmxYC8lgsqHzuIVjdcuK4afsI0YILriZEbMEb6wm2W9l5Z9SVFytLCEavy544OK64yVltkqrIMaAZWyLYEoB48lSQ>`__
