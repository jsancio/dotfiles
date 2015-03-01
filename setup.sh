#!/bin/sh

BASEDIR=$(python -c "import os; print(os.path.realpath('$(dirname "$0")'))")

ln -s $BASEDIR/vimrc ~/.vimrc
ln -s $BASEDIR/vim ~/.vim
ln -s $BASEDIR/tmux.conf ~/.tmux.conf
ln -s $BASEDIR/gitignore ~/.gitignore
ln -s $BASEDIR/gitconfig ~/.gitconfig
ln -s $BASEDIR/ctags ~/.ctags
ln -s $BASEDIR/start_agent ~/.start_agent
ln -s $BASEDIR/dircolors.ansi-dark ~/.dircolors
# TODO: Fix this being a git submodule
# ln -s $BASEDIR/dircolors-solarized/dircolors.ansi-dark ~/.dircolors
