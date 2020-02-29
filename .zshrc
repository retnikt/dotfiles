# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd beep extendedglob nomatch
unsetopt notify
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/retnikt/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

[ -f .zsh_aliases ] && . ~/.zsh_aliases

export PROMPT="%F{10}%n%f%F{15}@%f%F{13}%m%f:%F{12}%~%f$ "
