# Installation

## Install other tools

### APT tools

```bash
sudo apt install clang
sudo apt install fd-find
sudo apt install tig
sudo apt install unzip
sudo apt install zip
sudo apt install tmux
sudo apt install libssl-dev
sudo apt install python3-proselint
```

### Other tools

#### Jq
Need to make sure that the `jq` version is greater than 1.6. These are the [releases](https://stedolan.github.io/jq/download/).

#### Node.js

Installation [instructions](https://github.com/nodesource/distributions/blob/master/README.md) for deb/ubuntu.

### Snap installation

Look into this. Snap is not part of Pop OS by default.

``bash
sudo snap install ripgrep --classic
sudo snap install --beta neovim --classic
```

## Install Rust and Rust tools

Instructions for installing Rust are [here](https://forge.rust-lang.org/infra/other-installation-methods.html#other-ways-to-install-rustup).

Instructions for installing rust-analyzer are [here](https://rust-analyzer.github.io/manual.html)

```bash
cargo install cargo-watch
cargo install exa
```

## Install SDKMAN

Instructions for installing SDKMAN hare [here](https://sdkman.io/install).

### Install Java and Java tools

```bash
sdk install java
sdk install gradle
```

## Configure gnome

When installing alacrity under Gnome 3 we need to make it the default terminal.

```bash
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 30
cat /var/lib/dpkg/alternatives/x-terminal-emulator
sudo update-alternatives --config x-terminal-emulator
```

## Download and setup dotfiles

```bash
git clone git://github.com/jsancio/dotfiles.git
dotfiles/setup.sh
```

## Install tmux plugins

After starting tmux, press `prefix + I` (capital I, as in Install).

## Install and update NeoVim plugins

For a list of commands to install and upgrade the plugins see this [page](https://github.com/junegunn/vim-plug#commands).

### Install coc plugins

1. Installing [rust-analyzer](https://github.com/fannheyward/coc-rust-analyzer#install): `:CocInstall coc-rust-analyzer`.
2. Installing [scalameta](https://scalameta.org/metals/docs/editors/vim.html#installing-coc-metals): `:CocInstall coc-metals`.
