# ls
alias ls='exa'
alias ll='exa -l'
alias lll='exa -l | less'
alias lla='exa -la'
alias llt='exa -T'
alias llfu='exa -bghHliS --git'

# fd
alias fd=fdfind

# mkdir
alias mkdir='mkdir -p'

# skim bash key-binding and autocompletion
# TODO: Move this to a better place and document the change. This configuration changes are not really aliases
# TODO: Implement something similar for zsh. On MacOS this files are in: ls /opt/local/share/skim/shell/
if [ -f ~/.skim/shell/completion.bash ]; then
  . ~/.skim/shell/completion.bash
fi
if [ -f ~/.skim/shell/key-bindings.bash ]; then
  . ~/.skim/shell/key-bindings.bash
fi
