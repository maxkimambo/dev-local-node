export LS_OPTIONS='--color=auto'

alias update="sudo apt-get update"
alias install="sudo apt-get install"
alias genkey="ssh-keygen -t rsa -b 4096"
alias copyid="ssh-copy-id"
alias ll='ls -lhA -sort'
alias ..='cd ..'
alias ...='cd ../../'
alias b='cd -'
alias home='cd ~'
alias commit='git commit -am'
alias graph='git log --oneline --abbrev-commit --all --graph'
alias push='git push'
alias add-remote="git remote add origin"
alias push-master="git push -u origin master"
alias apt-list="apt --installed list"
