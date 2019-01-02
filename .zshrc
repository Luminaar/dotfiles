# Switch CapsLock and Escape keys
/usr/bin/setxkbmap -option "caps:swapescape"

# Path to your oh-my-zsh installation.
export ZSH=/home/luminar/.oh-my-zsh

ZSH_THEME="steeef"
ENABLE_CORRECTION="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  docker
  kubectl
)

source $ZSH/oh-my-zsh.sh


# Personal aliases
alias vim="nvim"

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