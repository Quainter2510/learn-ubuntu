#!/bin/bash
sudo apt install \
    fzf \
    tmux \
    tree \
    htop \
    vim \
    nano \
    build-essential \
    make \
    git \
    wget \
    curl \
    python3 \
    python3-pip \
    python3-venv \
    postgresql \
    nginx

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 25
# Verify the Node.js version:
node -v # Should print "v25.9.0".
# Verify npm version:
npm -v # Should print "11.12.1".


# иишная проверка установки библиотек
# ==========================================
packages=(
    "fzf"
    "tmux"
    "tree"
    "htop"
    "vim"
    "nano"
    "build-essential"
    "make"
    "git"
    "wget"
    "curl"
    "python3"
    "python3-pip"
    "python3-venv"
    "postgresql"
    "nginx"
)

for package in "${packages[@]}"; do
    if dpkg -l | grep -q "^ii.*$package"; then
        echo "✅ $package - установлен"
    else
        echo "❌ $package - НЕ установлен"
    fi
done

echo -e "\n=== Проверка Node.js и npm ==="

# Проверка Node.js
if command -v node &> /dev/null; then
    node_version=$(node --version 2>/dev/null)
    echo "✅ Node.js - установлен ($node_version)"
else
    echo "❌ Node.js - НЕ установлен"
fi

# Проверка npm
if command -v npm &> /dev/null; then
    npm_version=$(npm --version 2>/dev/null)
    echo "✅ npm - установлен (версия $npm_version)"
else
    echo "❌ npm - НЕ установлен"
fi
# =============================================================

#2
alias autoupgrade='sudo apt update; sudo apt upgrade'

#3
alias fullremove='sudo apt remove $@; sudo apt purge $@; sudo apt autoremove; sudo apt clean'