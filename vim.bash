#!/bin/bash
set -e

mkdir ~/code
cd ~/code
git clone https://github.com/rudenoise/vimrc.git
cd vimrc
cp .vimrc ~/.vimrc
cd ~/

mkdir -p ~/.vim/autoload;


mkdir -p ~/.vim/plugin;
mkdir -p ~/.vim/ftplugin;
cat ~/code/vimrc/ftplugin/js.vim >> ~/.vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale

npm install -g prettier-eslint-cli

wget https://raw.githubusercontent.com/kien/rainbow_parentheses.vim/master/autoload/rainbow_parentheses.vim -P $HOME/.vim/autoload/;

wget https://raw.github.com/kien/rainbow_parentheses.vim/master/plugin/rainbow_parentheses.vim -P $HOME/.vim/plugin/;


mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim

cd ~/

rm vim.bash

rm -fr code


wget https://raw.githubusercontent.com/rudenoise/nvim-docker-base/master/bash/.bashrc

