#!/bin/sh

BASEDIR=$(python -c "import os; print(os.path.realpath('$(dirname "$0")'))")

ln -s $BASEDIR/vimrc ~/.vimrc
ln -s $BASEDIR/vim ~/.vim
ln -s $BASEDIR/tmux.conf ~/.tmux.conf
ln -s $BASEDIR/gitignore ~/.gitignore
ln -s $BASEDIR/gitconfig ~/.gitconfig
# TODO: Fix this being a git submodule
# ln -s $BASEDIR/dircolors-solarized/dircolors.ansi-dark ~/.dircolors
ln -s $BASEDIR/ctags ~/.ctags
