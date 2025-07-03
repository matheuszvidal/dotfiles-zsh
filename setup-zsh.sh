#!/bin/bash

set -e

echo "🚀 Instalando pacotes base..."
sudo apt update
sudo apt install -y zsh git curl bat gh gpg wget

echo "📦 Adicionando repositório do eza (válido para todas as versões Debian/Ubuntu)..."
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza

echo "📦 Clonando plugins para ~/.zsh..."
mkdir -p ~/.zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/autosuggestions
git clone https://github.com/zsh-users/zsh-completions ~/.zsh/completions

echo "⚙️ Copiando arquivos de configuração..."
cp .zshrc ~/
cp .p10k.zsh ~/

echo "✅ Instalação finalizada! Reinicie o shell ou rode: source ~/.zshrc"