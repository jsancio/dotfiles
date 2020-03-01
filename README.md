# Installation

## Install other tools

``bash
sudo apt install clang
sudo apt install fd-find
sudo apt install tig
sudo apt install unzip
sudo apt install zip
sudo apt install neovim
sudo apt install tmux
``

## Install Rust and Rust tools

Instructions for installing Rust are [here](https://forge.rust-lang.org/infra/other-installation-methods.html#other-ways-to-install-rustup).

```bash
# Install rust/cargo tools
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
