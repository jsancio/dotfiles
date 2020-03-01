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
if [ -f ~/.skim/shell/completion.bash ]; then
  . ~/.skim/shell/completion.bash
fi
if [ -f ~/.skim/shell/key-bindings.bash ]; then
  . ~/.skim/shell/key-bindings.bash
fi
