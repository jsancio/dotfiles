# Installation

## Install other tools

### APT tools

```bash
sudo apt install clang
sudo apt install fd-find
sudo apt install tig
sudo apt install tmux
sudo apt install libssl-dev
sudo apt install python3-proselint
sudo apt install jq
sudo apt install ripgrep
sudo apt install neovim
```

Make sure that `jq` is version 1.6 or greater.

### Other tools

#### Node.js

Installation [instructions](https://github.com/nodesource/distributions/blob/master/README.md) for deb/ubuntu. Nodejs is mainly needed for the the Coc pluging for neovim.

## Install Rust and Rust tools

Instructions for installing Rust are [here](https://forge.rust-lang.org/infra/other-installation-methods.html#other-ways-to-install-rustup).

Instructions for installing rust-analyzer are [here](https://rust-analyzer.github.io/manual.html)

```bash
cargo install cargo-watch
cargo install procs
```
### exa

These are the [instructions](https://the.exa.website/install/linux) for installing exa. If the manual installation was used then make sure to symbolic link from the `.bash_completion.d` to the exa's bash complition file.

```bash
ln -s ~/.local/opt/exa/completions/exa.bash ~/.bash_completion.d/
```

## Install SDKMAN

Instructions for installing SDKMAN hare [here](https://sdkman.io/install).

### Install Java and Java tools

```bash
sdk install java
```

Note: that you may need to also install Java 8.

## Configure gnome

When installing alacritty under Gnome 3 we need to make it the default terminal.

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
