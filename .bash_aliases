alias targz='tar -zcvf'
alias untargz='tar -zxvf'

alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

	# activate virtual env
alias activate='source venv/bin/activate'

# git
alias st='git status'
alias add='git add'
alias cmt='git commit -m'
alias amend='git commit --amend'
alias check='git checkout'
alias push='git push'
alias pull='git pull'
alias merge='git merge'

alias release='git push; git checkout master; git merge devel; git push; git checkout devel;'


alias lisp='rlwrap sbcl'

alias home='cd ~; newgrp luminar'

alias arizona='ssh luminar.xyz'

# start web2py
alias devel='./web2py/web2py.py -a '12345' -i 127.0.0.1 -p 8000'

alias mysqlp='mysql -u root'
