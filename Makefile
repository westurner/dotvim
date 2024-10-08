
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
	#$(MAKE) list_vim_mappings

edit:
	# Open editor with primary project files
	echo $(EDITOR)
	$(EDITOR) README.rst Makefile $(VIM_FILES)


list_vimrc_comments:
	# List vimrc special comments
	grep -E -h '^\s*"\s' $(VIM_FILES) | sed 's/"//'

list_vimrc_shortcuts:
	# List vimrc keyboard shortcut comments (starting with '"  '')
	grep -E -h '^\s*"  ' $(VIM_FILES) | sed 's/"//'

VIM_MAPPINGS:=./tmp.output
list_vim_mappings:
	vim \
	 -c ':redir! > ${VIM_MAPPINGS}' \
	 -c ':map' \
	 -c ':redir END' \
	 -c ':exit'
	cat '${VIM_MAPPINGS}'

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


install-manual:
	# Install Vundle.vim, start vim, list bundles, install them,
	# and install tinyvim
	#
	$(MAKE) install_vundle
	$(MAKE) test_start_vim
	$(MAKE) list_bundles
	$(MAKE) install_bundles
	$(MAKE) symlink_bundle_to_bundles_all
	$(MAKE) test_start_vim
	$(MAKE) test_start_tinyvim
	#
	### These must be done manually:
	#make install_home     			# add symlink to ~/.vimrc
	#make install_powerline_fonts   # install patched powerline fonts

install:
	# Install Vundle.vim, start vim, list bundles, install them,
	# and install tinyvim
	#
	$(MAKE) install_vundle
	$(MAKE) list_bundles
	$(MAKE) install_bundles
	$(MAKE) symlink_bundle_to_bundles_all
	#$(MAKE) test_start_vim
	#$(MAKE) test_start_tinyvim
	#
	### These must be done manually:
	#make install_home     			# add symlink to ~/.vimrc
	#make install_powerline_fonts   # install patched powerline fonts

install_home:
	test -f $(HOME)/.vimrc && (\
		cp $(HOME)/.vimrc $(HOME)/.vimrc.backup && \
		rm $(HOME)/.vimrc) || true
	#test ! -d $(HOME)/.vim/
	ln -s $(PWD)/vimrc $(HOME)/.vimrc


install_vim_apt:
	sudo apt-get install vim-nox vim-gnome

install_vim_yum:
	sudo yum install vim-enhanced vim-X11

install_vim_dnf:
	sudo dnf install vim-enhanced vim-X11

install_vim_dnf__no_X11:
	sudo dnf install -y vim-enhanced

install_vim_src:
	$(SHELL) setup_vim_deb.sh

install_powerline_fonts_apt:
	sudo apt-get install -y fonts-powerline

install_powerline_fonts_dnf:
	sudo dnf install -y powerline-fonts

install_fontconfig_dnf:
	sudo dnf install -y fontconfig

install_powerline_fonts_dnf__: install_fontconfig_dnf
	$(MAKE) install_powerline_fonts

install_powerline_fonts:
	$(SHELL) ./scripts/setup_powerline_fonts.sh

install_vundle:
	# Install or update vundle
	mkdir -p bundles.all/
	test ! -d bundles.all/Vundle.vim \
		&& git clone https://github.com/gmarik/Vundle.vim bundles.all/Vundle.vim \
		|| $(MAKE) update_vundle
	test -e bundle/ || \
		ln -s bundles.all/ bundle
	# ->	|| $(MAKE) update_vundle

update_vundle:
	# git pull Vundle from upstream
	test -d bundles.all/Vundle.vim
	test -d bundles.all/Vundle.vim/.git || ( \
		rm -rf bundle/Vundle.vim && \
		git clone https://github.com/gmarik/Vundle.vim bundles.all/Vundle.vim )
	cd bundles.all/Vundle.vim \
		&& git pull https://github.com/gmarik/Vundle.vim master
	test -e bundle/ || \
		ln -s bundles.all/ bundle

list_bundles:
	# List vimrc Bundles
	grep -E "^\s*Bundle '" $(VIMRC_BUNDLES) | sed "s/Bundle '\(.*\)'/\1/g"

pyrpo:
	# List repositories with pyrpo (pip install pyrpo)
	pyrpo -s . -r sh | tee pyrpo.log.sh


DOTVIM_BUNDLE_NAME:=all

install_bundles:
	# Listall bundles with Vundle
	mkdir -p '${DOTVIM_BUNDLE_NAME}'
	DOTVIM_BUNDLE_NAME=${DOTVIM_BUNDLE_NAME} \
					   vim -T dumb -E +PluginInstall +qall || true
	$(MAKE) install_bundle_fixes

update_bundles:
	# Listall bundles with Vundle
	DOTVIM_BUNDLE_NAME=${DOTVIM_BUNDLE_NAME} \
					   vim -T dumb -E +PluginUpdate +qall || true
	$(MAKE) install_bundle_fixes

symlink_bundle_to_bundles_all:
	$(shell if ! test -e bundle; then ln -s bundle bundles.all; fi)

ls_bundles:
	(cd ./bundles.all && ls)
	(cd ./bundle && ls) | tee Bundlefile

install_bundle_fixes:
	$(MAKE) install_pymode_bundle
	$(MAKE) install_black_virtualenv

install_pymode_bundle:
	test -d bundles.all/python-mode || \
		(cd bundles.all/; git clone https://github.com/python-mode/python-mode)
	git -C bundles.all/python-mode submodule update --init --remote --checkout --recursive

BLACK := $(shell command -v black 2> /dev/null)

install_black_dnf:
	# This would install a bunch of python dependencies in the system site-packages;
	# virtualenv/pipx has less performance impact on "import" statements with the system python bin.
	#
	#sudo dnf install -y black

install_black_virtualenv:
#	TODO: dnf install -y black # if fc>=38?
#	(test -e ~/.vim/black && test -e ~/.vim/black/bin/black) \
# 		|| (virtualenv ~/.vim/black && ~/.vim/black/bin/pip install -U black)
ifndef BLACK
	$(info "black is not available; installing black with pip/pipx:")
endif
	which pip || python3 -m ensurepip
	which pipx || python3 -m pip install pipx
	pipx install black || pipx upgrade black

hg_changelog:
	hg log --style=changelog

hg_push:
	hg push default

pull:
	git pull

push:
	git push

.PHONY: all
all: test build

profileoptions:
	vim --version | grep --color=auto -E '+startuptime|+profile'

startuptime:
	vim --startuptime startup.report

profile_startup:
	vim --cmd 'profile start profile.log' \
		--cmd 'profile func *' \
		--cmd 'profile file *' \
		-c 'profdel func *' \
		-c 'profdel file *' \
		-c 'qa!'


profile_startup_special:
	vim --cmd 'profile start profile.log' \
		--cmd 'profile func *' \
		--cmd 'profile file *' \
		-c 'profdel func *' \
		-c 'profdel file *' \
		./bundle/vimwiki/README.md
