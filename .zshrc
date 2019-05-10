# Switch CapsLock and Escape keys
/usr/bin/setxkbmap -option "caps:swapescape"

# Path to your oh-my-zsh installation.
export ZSH=/home/luminar/.oh-my-zsh

ZSH_THEME="steeef"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  docker
  kubectl
)

source $ZSH/oh-my-zsh.sh


# Personal aliases
alias vim="nvim"
alias ptree="tree -I 'venv|__pycache__|*egg-info'"  # Show Python project tree
alias dog="git log --all --decorate --oneline --graph --date-order"  # Show Git log graph

# Virtual envs
alias activate='source venv/bin/activate'
alias mkenv="python3.7 -m venv venv; activate;"
alias delenv="deactivate; rm -rf venv;"
alias renv="delenv; mkenv;"

# Completions
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/luminar/.sdkman"
[[ -s "/home/luminar/.sdkman/bin/sdkman-init.sh" ]] && source "/home/luminar/.sdkman/bin/sdkman-init.sh"

# FZF integration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias gga='git add $(git -c color.status=always status --short | sed -E "s/(.{2}) (.*)/\1: \2/" | fzf --ansi --nth=2 --tac --no-sort --delimiter=":" --bind=ctrl-a:toggle-all --multi --preview "~/misc/dotfiles/diff-or-cat.sh {2}" | cut --delimiter=":" --fields=2)'

# https://github.com/changyuheng/zsh-interactive-cd
[ -f ~/.zsh/zsh-interactive-cd.plugin.zsh ] && source ~/.zsh/zsh-interactive-cd.plugin.zsh

