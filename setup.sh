#!/bin/sh
BASEDIR=$(python -c "import os; print(os.path.realpath('$(dirname "$0")'))")


# Install Tmux Plugin Manager
git clone git://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install vim-plugin
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Enable all of the configurations
mkdir -p ~/.config/nvim
ln -s $BASEDIR/config/nvim/init.vim ~/.config/nvim/init.vim

mkdir -p ~/.config/alacritty
ln -s $BASEDIR/config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

ln -s $BASEDIR/bash_aliases ~/.bash_aliases
ln -s $BASEDIR/tmux.conf ~/.tmux.conf
ln -s $BASEDIR/gitignore ~/.gitignore
ln -s $BASEDIR/gitconfig ~/.gitconfig
ln -s $BASEDIR/dircolors.ansi-universal ~/.dircolors
