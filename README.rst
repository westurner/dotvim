dotvim
=========
My personal vim_ text editor configuration dotfiles_.

* GitHub: https://github.com/westurner/dotvim
* BitBucket: https://bitbucket.org/westurner/dotvim

.. _vim: https://en.wikipedia.org/wiki/Vim_(text_editor)
.. _dotfiles: https://github.com/westurner/dotfiles


Install
--------
https://github.com/westurner/dotfiles install::

   ## Standalone install::
   REPO_DEST=${VIRTUAL_ENV:+"$VIRTUAL_ENV/src/"}dotvim

   ## dotfiles install
   # REPO_DEST=${__DOTFILES}/etc/vim

   ## Clone
   git clone ssh://git@github.com/westurner/dotvim $REPO_DEST


Usage
------
Two files::

   vimrc          # ViM configuration (symlink to ~/.vimrc)
   vimrc.bundles  # Vundle configuration

``Makefile``::

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


