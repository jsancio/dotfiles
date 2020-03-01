#!/bin/sh
BASEDIR=$(python -c "import os; print(os.path.realpath('$(dirname "$0")'))")

# tmux plugin manager
git clone git://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# vim-plugin installation
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nvim configurations
mkdir -p ~/.config/nvim
ln -s $BASEDIR/config/nvim/init.vim ~/.config/nvim/init.vim
ln -s $BASEDIR/config/nvim/ftplugin/ ~/.config/nvim/ftplugin

# alacritty configurations
mkdir -p ~/.config/alacritty
ln -s $BASEDIR/config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# skim links
mkdir -p ~/.local/bin
ln -s ~/.skim/bin/sk ~/.local/bin/sk
ln -s ~/.skim/bin/sk-tmux ~/.local/bin/sk-tmux

# symbolic links misc
ln -s $BASEDIR/bash_aliases ~/.bash_aliases
ln -s $BASEDIR/tmux.conf ~/.tmux.conf
ln -s $BASEDIR/gitignore ~/.gitignore
ln -s $BASEDIR/gitconfig ~/.gitconfig
ln -s $BASEDIR/dircolors.ansi-universal ~/.dircolors
