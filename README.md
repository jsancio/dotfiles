# Installation

## Download and setup dotfiles

```bash
git clone git://github.com/jsancio/dotfiles.git
dotfiles/setup.sh
```

## Install tmux plugins

After running starting tmux, press `prefix + I` (capital I, as in Install).

## Install and update NeoVim plugins

For a list of commands to install and upgrade the plugins see this [page](https://github.com/junegunn/vim-plug#commands).

## Add the following lines to `~/.profile`

```bash
# set the go path
if [ -d "$HOME/work/go" ]; then
export GOPATH=$HOME/work/go
fi
```
