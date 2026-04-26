# 1
alias fav='cd ~/learn-ubuntu; nautilus .'

# 2
alias l='ls -Av --group-directories-first --color=auto'

alias ll='ls -lAvpth --group-directories-first --color=auto'

# 3
alias cd='cd $@; l'

# 4
alias cdf='cd "$(dirname $(fzf))"'

# 5
ln .env /service1/ /service2/ /service3/

#6
cat $(ls | grep \.py) | grep "$@"
