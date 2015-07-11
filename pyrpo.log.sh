
git clone "https://github.com/westurner/dotvim" "." ;
git checkout -r '85c8e11' -C "." ;
### git checkout master -C "." ;
cat > './.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/westurner/dotvim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/Lokaltog/powerline-fonts" "powerline-fonts" ;
git checkout -r '97dc451' -C "powerline-fonts" ;
### git checkout master -C "powerline-fonts" ;
cat > 'powerline-fonts/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/Lokaltog/powerline-fonts
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/Rykka/riv.vim" "riv.vim" ;
git checkout -r '4562fbe' -C "riv.vim" ;
### git checkout master -C "riv.vim" ;
cat > 'riv.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/Rykka/riv.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/SirVer/ultisnips" "bundle/ultisnips" ;
git checkout -r '9822193' -C "bundle/ultisnips" ;
### git checkout master -C "bundle/ultisnips" ;
cat > 'bundle/ultisnips/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/SirVer/ultisnips
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/fountainwiki.vim" "bundle/fountainwiki.vim" ;
git checkout -r '0117a75' -C "bundle/fountainwiki.vim" ;
### git checkout master -C "bundle/fountainwiki.vim" ;
cat > 'bundle/fountainwiki.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/fountainwiki.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/mattn/gist-vim" "bundle/gist-vim" ;
git checkout -r '52e2d54' -C "bundle/gist-vim" ;
### git checkout master -C "bundle/gist-vim" ;
cat > 'bundle/gist-vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/mattn/gist-vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/n3.vim" "bundle/n3.vim" ;
git checkout -r 'e94ef0f' -C "bundle/n3.vim" ;
### git checkout master -C "bundle/n3.vim" ;
cat > 'bundle/n3.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/n3.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/Shougo/neocomplcache.vim" "bundle/neocomplcache.vim" ;
git checkout -r '7781817' -C "bundle/neocomplcache.vim" ;
### git checkout master -C "bundle/neocomplcache.vim" ;
cat > 'bundle/neocomplcache.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/Shougo/neocomplcache.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/tpope/vim-unimpaired" "bundle/vim-unimpaired" ;
git checkout -r '1ec6af9' -C "bundle/vim-unimpaired" ;
### git checkout master -C "bundle/vim-unimpaired" ;
cat > 'bundle/vim-unimpaired/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/tpope/vim-unimpaired
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/mjbrownie/Trac.vim" "bundle/Trac.vim" ;
git checkout -r '1763771' -C "bundle/Trac.vim" ;
### git checkout master -C "bundle/Trac.vim" ;
cat > 'bundle/Trac.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/mjbrownie/Trac.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/nathanaelkane/vim-indent-guides" "bundle/vim-indent-guides" ;
git checkout -r '4895e86' -C "bundle/vim-indent-guides" ;
### git checkout master -C "bundle/vim-indent-guides" ;
cat > 'bundle/vim-indent-guides/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/nathanaelkane/vim-indent-guides
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/xolox/vim-misc" "bundle/vim-misc" ;
git checkout -r '3e6b8fb' -C "bundle/vim-misc" ;
### git checkout master -C "bundle/vim-misc" ;
cat > 'bundle/vim-misc/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/xolox/vim-misc
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/scrooloose/syntastic" "bundle/syntastic" ;
git checkout -r '59513ed' -C "bundle/syntastic" ;
### git checkout master -C "bundle/syntastic" ;
cat > 'bundle/syntastic/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/scrooloose/syntastic
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/jmcantrell/vim-virtualenv" "bundle/vim-virtualenv" ;
git checkout -r 'e51a02e' -C "bundle/vim-virtualenv" ;
### git checkout master -C "bundle/vim-virtualenv" ;
cat > 'bundle/vim-virtualenv/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/jmcantrell/vim-virtualenv
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/sparql.vim" "bundle/sparql.vim" ;
git checkout -r '4d1d27f' -C "bundle/sparql.vim" ;
### git checkout master -C "bundle/sparql.vim" ;
cat > 'bundle/sparql.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/sparql.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/HiColors" "bundle/HiColors" ;
git checkout -r '415a5bd' -C "bundle/HiColors" ;
### git checkout master -C "bundle/HiColors" ;
cat > 'bundle/HiColors/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/HiColors
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/mhinz/vim-signify" "bundle/vim-signify" ;
git checkout -r '4fdcfa0' -C "bundle/vim-signify" ;
### git checkout master -C "bundle/vim-signify" ;
cat > 'bundle/vim-signify/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/mhinz/vim-signify
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/westurner/venv.vim" "bundle/venv.vim" ;
git checkout -r '532f63f' -C "bundle/venv.vim" ;
### git checkout master -C "bundle/venv.vim" ;
cat > 'bundle/venv.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/westurner/venv.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/ludovicchabant/vim-lawrencium" "bundle/vim-lawrencium" ;
git checkout -r '6d404bd' -C "bundle/vim-lawrencium" ;
### git checkout master -C "bundle/vim-lawrencium" ;
cat > 'bundle/vim-lawrencium/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/ludovicchabant/vim-lawrencium
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/godlygeek/csapprox" "bundle/csapprox" ;
git checkout -r '7981dac' -C "bundle/csapprox" ;
### git checkout master -C "bundle/csapprox" ;
cat > 'bundle/csapprox/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/godlygeek/csapprox
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/mattn/webapi-vim" "bundle/webapi-vim" ;
git checkout -r '6d577e4' -C "bundle/webapi-vim" ;
### git checkout master -C "bundle/webapi-vim" ;
cat > 'bundle/webapi-vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/mattn/webapi-vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/othree/html5.vim" "bundle/html5.vim" ;
git checkout -r '40e924c' -C "bundle/html5.vim" ;
### git checkout master -C "bundle/html5.vim" ;
cat > 'bundle/html5.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/othree/html5.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/mattboehm/vim-unstack" "bundle/vim-unstack" ;
git checkout -r 'a6c562f' -C "bundle/vim-unstack" ;
### git checkout master -C "bundle/vim-unstack" ;
cat > 'bundle/vim-unstack/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/mattboehm/vim-unstack
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/groenewege/vim-less" "bundle/vim-less" ;
git checkout -r '55a98f0' -C "bundle/vim-less" ;
### git checkout master -C "bundle/vim-less" ;
cat > 'bundle/vim-less/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/groenewege/vim-less
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/mileszs/ack.vim" "bundle/ack.vim" ;
git checkout -r '923507c' -C "bundle/ack.vim" ;
### git checkout master -C "bundle/ack.vim" ;
cat > 'bundle/ack.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/mileszs/ack.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/kchmck/vim-coffee-script" "bundle/vim-coffee-script" ;
git checkout -r '32fe889' -C "bundle/vim-coffee-script" ;
### git checkout master -C "bundle/vim-coffee-script" ;
cat > 'bundle/vim-coffee-script/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/kchmck/vim-coffee-script
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/majutsushi/tagbar" "bundle/tagbar" ;
git checkout -r '7b36c46' -C "bundle/tagbar" ;
### git checkout master -C "bundle/tagbar" ;
cat > 'bundle/tagbar/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/majutsushi/tagbar
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/kien/ctrlp.vim" "bundle/ctrlp.vim" ;
git checkout -r 'b5d3fe6' -C "bundle/ctrlp.vim" ;
### git checkout master -C "bundle/ctrlp.vim" ;
cat > 'bundle/ctrlp.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/kien/ctrlp.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/kien/rainbow_parentheses.vim" "bundle/rainbow_parentheses.vim" ;
git checkout -r 'eb8baa5' -C "bundle/rainbow_parentheses.vim" ;
### git checkout master -C "bundle/rainbow_parentheses.vim" ;
cat > 'bundle/rainbow_parentheses.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/kien/rainbow_parentheses.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/info.vim" "bundle/info.vim" ;
git checkout -r '520a2b3' -C "bundle/info.vim" ;
### git checkout master -C "bundle/info.vim" ;
cat > 'bundle/info.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/info.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/gmarik/Vundle.vim" "bundle/Vundle.vim" ;
git checkout -r 'cfd3b2d' -C "bundle/Vundle.vim" ;
### git checkout master -C "bundle/Vundle.vim" ;
cat > 'bundle/Vundle.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/gmarik/Vundle.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/alfredodeza/pytest.vim" "bundle/pytest.vim" ;
git checkout -r '7e0b214' -C "bundle/pytest.vim" ;
### git checkout master -C "bundle/pytest.vim" ;
cat > 'bundle/pytest.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/alfredodeza/pytest.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/mitsuhiko/vim-jinja" "bundle/vim-jinja" ;
git checkout -r '8a8f0ed' -C "bundle/vim-jinja" ;
### git checkout master -C "bundle/vim-jinja" ;
cat > 'bundle/vim-jinja/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/mitsuhiko/vim-jinja
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/EvanDotPro/nerdtree-symlink" "bundle/nerdtree-symlink" ;
git checkout -r '961e1e8' -C "bundle/nerdtree-symlink" ;
### git checkout master -C "bundle/nerdtree-symlink" ;
cat > 'bundle/nerdtree-symlink/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/EvanDotPro/nerdtree-symlink
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/xolox/vim-session" "bundle/vim-session" ;
git checkout -r '060dea4' -C "bundle/vim-session" ;
### git checkout master -C "bundle/vim-session" ;
cat > 'bundle/vim-session/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/xolox/vim-session
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/hail2u/vim-css3-syntax" "bundle/vim-css3-syntax" ;
git checkout -r 'b6d3c9e' -C "bundle/vim-css3-syntax" ;
### git checkout master -C "bundle/vim-css3-syntax" ;
cat > 'bundle/vim-css3-syntax/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/hail2u/vim-css3-syntax
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/tpope/vim-fugitive" "bundle/vim-fugitive" ;
git checkout -r '7c4a906' -C "bundle/vim-fugitive" ;
### git checkout master -C "bundle/vim-fugitive" ;
cat > 'bundle/vim-fugitive/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/tpope/vim-fugitive
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/Lokaltog/vim-easymotion" "bundle/vim-easymotion" ;
git checkout -r '2a2cf14' -C "bundle/vim-easymotion" ;
### git checkout master -C "bundle/vim-easymotion" ;
cat > 'bundle/vim-easymotion/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/Lokaltog/vim-easymotion
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/bling/vim-airline" "bundle/vim-airline" ;
git checkout -r 'cdc6d98' -C "bundle/vim-airline" ;
### git checkout master -C "bundle/vim-airline" ;
cat > 'bundle/vim-airline/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/bling/vim-airline
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/tpope/vim-surround" "bundle/vim-surround" ;
git checkout -r '772ab95' -C "bundle/vim-surround" ;
### git checkout master -C "bundle/vim-surround" ;
cat > 'bundle/vim-surround/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/tpope/vim-surround
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/xolox/vim-colorscheme-switcher" "bundle/vim-colorscheme-switcher" ;
git checkout -r '4d9807a' -C "bundle/vim-colorscheme-switcher" ;
### git checkout master -C "bundle/vim-colorscheme-switcher" ;
cat > 'bundle/vim-colorscheme-switcher/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/xolox/vim-colorscheme-switcher
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/tpope/vim-haml" "bundle/vim-haml" ;
git checkout -r '204e327' -C "bundle/vim-haml" ;
### git checkout master -C "bundle/vim-haml" ;
cat > 'bundle/vim-haml/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/tpope/vim-haml
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/VOoM" "bundle/VOoM" ;
git checkout -r 'a88734f' -C "bundle/VOoM" ;
### git checkout master -C "bundle/VOoM" ;
cat > 'bundle/VOoM/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/VOoM
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/jaxbot/github-issues.vim" "bundle/github-issues.vim" ;
git checkout -r '2107270' -C "bundle/github-issues.vim" ;
### git checkout master -C "bundle/github-issues.vim" ;
cat > 'bundle/github-issues.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/jaxbot/github-issues.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/saltstack/salt-vim" "bundle/salt-vim" ;
git checkout -r 'e6648ab' -C "bundle/salt-vim" ;
### git checkout master -C "bundle/salt-vim" ;
cat > 'bundle/salt-vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/saltstack/salt-vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/FuzzyFinder" "bundle/FuzzyFinder" ;
git checkout -r 'b9f1659' -C "bundle/FuzzyFinder" ;
### git checkout master -C "bundle/FuzzyFinder" ;
cat > 'bundle/FuzzyFinder/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/FuzzyFinder
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/fountain.vim" "bundle/fountain.vim" ;
git checkout -r '3a470bb' -C "bundle/fountain.vim" ;
### git checkout master -C "bundle/fountain.vim" ;
cat > 'bundle/fountain.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/fountain.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/mbbill/undotree" "bundle/undotree" ;
git checkout -r 'fa018f3' -C "bundle/undotree" ;
### git checkout master -C "bundle/undotree" ;
cat > 'bundle/undotree/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/mbbill/undotree
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/mikewest/vimroom" "bundle/vimroom" ;
git checkout -r 'b9d1fa7' -C "bundle/vimroom" ;
### git checkout master -C "bundle/vimroom" ;
cat > 'bundle/vimroom/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/mikewest/vimroom
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/Rykka/os.vim" "bundle/os.vim" ;
git checkout -r '252d2a2' -C "bundle/os.vim" ;
### git checkout master -C "bundle/os.vim" ;
cat > 'bundle/os.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/Rykka/os.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/L9" "bundle/L9" ;
git checkout -r 'c822b05' -C "bundle/L9" ;
### git checkout master -C "bundle/L9" ;
cat > 'bundle/L9/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/L9
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/digitaltoad/vim-jade" "bundle/vim-jade" ;
git checkout -r 'fb47bb8' -C "bundle/vim-jade" ;
### git checkout master -C "bundle/vim-jade" ;
cat > 'bundle/vim-jade/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/digitaltoad/vim-jade
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/pyrex.vim" "bundle/pyrex.vim" ;
git checkout -r '464bf6a' -C "bundle/pyrex.vim" ;
### git checkout master -C "bundle/pyrex.vim" ;
cat > 'bundle/pyrex.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/pyrex.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/sickill/vim-pasta" "bundle/vim-pasta" ;
git checkout -r '50ac52a' -C "bundle/vim-pasta" ;
### git checkout master -C "bundle/vim-pasta" ;
cat > 'bundle/vim-pasta/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/sickill/vim-pasta
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/nanotech/jellybeans.vim" "bundle/jellybeans.vim" ;
git checkout -r 'f931895' -C "bundle/jellybeans.vim" ;
### git checkout master -C "bundle/jellybeans.vim" ;
cat > 'bundle/jellybeans.vim/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/nanotech/jellybeans.vim
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/honza/vim-snippets" "bundle/vim-snippets" ;
git checkout -r '59cc3ec' -C "bundle/vim-snippets" ;
### git checkout master -C "bundle/vim-snippets" ;
cat > 'bundle/vim-snippets/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/honza/vim-snippets
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/tpope/vim-abolish" "bundle/vim-abolish" ;
git checkout -r 'e6a170c' -C "bundle/vim-abolish" ;
### git checkout master -C "bundle/vim-abolish" ;
cat > 'bundle/vim-abolish/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/tpope/vim-abolish
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/scrooloose/nerdcommenter" "bundle/nerdcommenter" ;
git checkout -r '6549cfd' -C "bundle/nerdcommenter" ;
### git checkout master -C "bundle/nerdcommenter" ;
cat > 'bundle/nerdcommenter/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/scrooloose/nerdcommenter
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/scrooloose/nerdtree" "bundle/nerdtree" ;
git checkout -r '96c0774' -C "bundle/nerdtree" ;
### git checkout master -C "bundle/nerdtree" ;
cat > 'bundle/nerdtree/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/scrooloose/nerdtree
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/pangloss/vim-javascript" "bundle/vim-javascript" ;
git checkout -r 'bab4f39' -C "bundle/vim-javascript" ;
### git checkout master -C "bundle/vim-javascript" ;
cat > 'bundle/vim-javascript/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/pangloss/vim-javascript
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/dmcinnes/FindInNERDTree" "bundle/FindInNERDTree" ;
git checkout -r '7ba928e' -C "bundle/FindInNERDTree" ;
### git checkout master -C "bundle/FindInNERDTree" ;
cat > 'bundle/FindInNERDTree/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/dmcinnes/FindInNERDTree
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/vim-scripts/sort-python-imports" "bundle/sort-python-imports" ;
git checkout -r '0cc3ae8' -C "bundle/sort-python-imports" ;
### git checkout master -C "bundle/sort-python-imports" ;
cat > 'bundle/sort-python-imports/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/vim-scripts/sort-python-imports
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/klen/python-mode" "bundle/python-mode" ;
git checkout -r '9c8468e' -C "bundle/python-mode" ;
### git checkout develop -C "bundle/python-mode" ;
cat > 'bundle/python-mode/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/klen/python-mode
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "develop"]
	remote = origin
	merge = refs/heads/develop

_EOF_

git clone "https://github.com/skammer/vim-css-color" "bundle/vim-css-color" ;
git checkout -r '417eaf8' -C "bundle/vim-css-color" ;
### git checkout master -C "bundle/vim-css-color" ;
cat > 'bundle/vim-css-color/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/skammer/vim-css-color
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/jlanzarotta/bufexplorer" "bundle/bufexplorer" ;
git checkout -r 'ef7e417' -C "bundle/bufexplorer" ;
### git checkout master -C "bundle/bufexplorer" ;
cat > 'bundle/bufexplorer/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/jlanzarotta/bufexplorer
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_

git clone "https://github.com/robotvert/vim-nginx" "bundle/vim-nginx" ;
git checkout -r 'a3a1437' -C "bundle/vim-nginx" ;
### git checkout master -C "bundle/vim-nginx" ;
cat > 'bundle/vim-nginx/.git/config' << _EOF_
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/robotvert/vim-nginx
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master

_EOF_
