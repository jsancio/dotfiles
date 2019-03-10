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

## Install other tools

```bash
# Install rust/cargo tools
cargo install cargo-watch
cargo install exa
cargo install fd-find
cargo install ripgrep
```

## Add the following lines to `~/.profile`

```bash
# Swap escape key and caps lock key
if hash setxkbmap 2>/dev/null; then
  setxkbmap -option caps:swapescape
fi

# Set the go path
if [ -d "$HOME/work/go" ]; then
export GOPATH=$HOME/work/go
fi
```
