. $HOME/.config/zsh/.zshenv

autoload -Uz compinit

mkdir -p $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

. $HOME/.config/zsh/ohmyzshrc
. $HOME/.config/zsh/zsh_aliases
. $HOME/.config/shortcutrc

unalias run-help &>/dev/null
autoload run-help

# disable the world's dumbest oh-my-zsh "feature"
unsetopt share_history
