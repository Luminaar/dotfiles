bindkey -v
export HISTCONTROL=ignorespace

# Path to your oh-my-zsh installation.
export ZSH=/home/luminar/.oh-my-zsh

ZSH_THEME="steeef"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  docker
  kubectl
)

fpath+=~/.zfunc
autoload -Uz compinit && compinit -i

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/home/luminar/.cargo/bin


# Personal aliases
alias ptree="tree -I 'venv|__pycache__|*egg-info|htmlcov|build|dist'"  # Show Python project tree
alias dog="git log --all --decorate --oneline --graph --date-order"  # Show Git log graph

# Virtual envs
alias activate='source venv/bin/activate'
alias mkenv="python3.7 -m venv venv; activate; pip --isolated install --upgrade pip setuptools 1>/dev/null; pip install wheel 1>/dev/null"
alias mkenv8="python3.8 -m venv venv; activate; pip --isolated install --upgrade pip setuptools 1>/dev/null; pip install wheel 1>/dev/null"
alias delenv="deactivate; rm -rf venv;"
alias renv="delenv; mkenv;"
alias nuke="delenv; rm -rf build dist .eggs;"

alias devel='./web2py/web2py.py -a '12345' -i 127.0.0.1 -p 8000'
alias mysqlp='mysql -u root'

alias ns=nslookup
alias experiment='cd ~/projects/python/experiments; activate;'
alias vimconf='cd ~/.config/nvim/'
alias fixkeys='killall gsd-media-keys'

alias fsl=fossil

## FZF integration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias gga='git add $(git -c color.status=always status --short | sed -E "s/(.{2}) (.*)/\1: \2/" | fzf --ansi --nth=2 --tac --no-sort --delimiter=":" --bind=ctrl-a:toggle-all --multi --preview "~/misc/dotfiles/diff-or-cat.sh {2}" | cut --delimiter=":" --fields=2)'

# https://github.com/changyuheng/zsh-interactive-cd
[ -f ~/.zsh/zsh-interactive-cd.plugin.zsh ] && source ~/.zsh/zsh-interactive-cd.plugin.zsh

export PYLINTRC=~/.config/pylint.conf
export EDITOR="/usr/local/bin/vim"
export BROWSER="w3m"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/luminar/.sdkman"
[[ -s "/home/luminar/.sdkman/bin/sdkman-init.sh" ]] && source "/home/luminar/.sdkman/bin/sdkman-init.sh"

# added by travis gem
[ -f /home/luminar/.travis/travis.sh ] && source /home/luminar/.travis/travis.sh

export KUBECONFIG=~/misc/config
export GOPATH=~/projects/go
