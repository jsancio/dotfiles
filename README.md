# Installation

1. Download and setup dotfiles

  ```
  git clone git://github.com/jsancio/dotfiles.git
  dotfiles/setup.sh
  cd ~/.vim
  ./update_bundlers.py
  ```

  TODO: Talk about how to install Tmux Plugin Manager: https://github.com/tmux-plugins/tpm

2. Add the following lines to  `~/.profile`

  ```bash
  # set the go path
  if [ -d "$HOME/work/go" ]; then
      export GOPATH=$HOME/work/go
  fi

  # start ssh-agent
  if [ -f "$HOME/.start_agent" ]; then
      . "$HOME/.start_agent"
  fi
```
