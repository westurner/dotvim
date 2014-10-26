
# Vim scripts Makefile
VIMRC:=vimrc
VIMRC_BUNDLES:=vimrc.full.bundles.vimrc
VIM_FILES:=$(VIMRC) $(VIMRC_BUNDLES)

HOME_VIMRC=$(HOME)/.vimrc
HOME_DOTVIM=$(HOME)/.vim

## ETC_VIMRC_LOCAL=/etc/vim/vimrc.local


default: test

help:
	$(MAKE) list_vimrc_comments
	#$(MAKE) list_vimrc_shortcuts

edit:
	# Open editor with primary project files
	echo $(EDITOR)
	$(EDITOR) README.rst Makefile $(VIM_FILES)


list_vimrc_comments:
	# List vimrc special comments
	egrep -h '^\s*"\s' $(VIM_FILES)

list_vimrc_shortcuts:
	# List vimrc keyboard shortcut comments (starting with '"  '')
	egrep -h '^\s*"  ' $(VIM_FILES)


test:
	# Test this Makefile
	$(MAKE) test_start_vim
	$(MAKE) test_start_gvim
	$(MAKE) test_start_tinyvim
	##$(MAKE) edit
	$(MAKE) list_vimrc_comments
	$(MAKE) list_vimrc_shortcuts

test_start_vim:
	# Start vim and exit
	vim -c 'exit'

test_start_tinyvim:
	# Start (tiny) vim and exit
	vim --cmd 'let g:tinyvim = 1' -c 'exit'

test_start_gvim:
	# Start vim and exit
	gvim -c 'exit'


build:


install:
	# Install Vundle.vim, start vim, list bundles, install them,
	# and install tinyvim
	#
	$(MAKE) install_vundle
	$(MAKE) test_start_vim
	$(MAKE) list_bundles
	$(MAKE) install_bundles
	$(MAKE) test_start_vim
	$(MAKE) test_start_tinyvim
	#
	# TODO: These must be done manually:
	#$(MAKE) install_powerline_fonts
	#$(MAKE) install_home

install_home:
	test -f $(HOME)/.vimrc && \
		cp $(HOME)/.vimrc $(HOME)/.vimrc.backup && \
		rm $(HOME)/.vimrc
	test ! -d $(HOME)/.vim/
	ln -s $(PWD)/vimrc $(HOME)/.vimrc


install_vim_apt:
	sudo apt-get install vim-nox vim-gnome

install_vim_src:
	$(SHELL) setup_vim_deb.sh

install_powerline_fonts:
	$(SHELL) setup_powerline_fonts.sh

install_vundle:
	# Install or update vundle
	mkdir -p bundle/
	test ! -d bundle/Vundle.vim \
		&& git clone https://github.com/gmarik/Vundle.vim bundle/Vundle.vim \
		|| $(MAKE) update_vundle
	# ->	|| $(MAKE) update_vundle

update_vundle:
	# git pull Vundle from upstream
	test -d bundle/Vundle.vim
	test -d bundle/Vundle.vim/.git || ( \
		rm -rf bundle/Vundle.vim && \
		git clone https://github.com/gmarik/Vundle.vim bundle/Vundle.vim )
	cd bundle/Vundle.vim \
		&& git pull https://github.com/gmarik/Vundle.vim master

list_bundles:
	# List vimrc Bundles
	egrep "^Bundle '" $(VIMRC_BUNDLES) | sed "s/Bundle '\(.*\)'/\1/g"

install_bundles:
	# Listall bundles with Vundle
	vim +PluginInstall +qall

hg_changelog:
	hg log --style=changelog

hg_push:
	hg push default

.PHONY: all
all: test build


