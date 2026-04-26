#  Навигация


## 1. Любимая папка
alias fav='cd ~/path/to/my/favourite/folder; nautilus .'


## 2. Удобные ls'ы
alias l='ls -Av --group-directories-first --color=auto'
alias ll='ls -lApthv --color=auto'


## 3. cd + ls
alias cd='cd "$@"; l'


## 4. cd + fzf
alias cdf='cd "$(dirname "$(fzf)")"'

## 5. Жесткий env
ln .env service1/
ln .env service2/
ln .env service3/

## 6. Поиск в Python файлах
cat $(ls | grep \.py$) | grep "$@"
