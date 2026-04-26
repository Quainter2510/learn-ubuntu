# Работа с пакетами


## 1. Автоматическая установка
sudo apt install fzf tmux tree htop vim nano build-essential make git wget curl

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.12 python3.12-venv
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.12

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
nvm install 20

sudo apt install postgresql nginx


# 2. Быстрое Обновление
alias autoupgrade='sudo apt update; sudo apt upgrade'


# 3. Полнейшее удаление
alias fullremove='sudo apt remove "$@"; sudo apt purge "$@"; sudo apt autoremove; sudo apt clean'
