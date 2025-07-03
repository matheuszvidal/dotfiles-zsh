#!/bin/bash

set -e

echo "🚀 Instalando pacotes base..."
sudo apt update
sudo apt install -y zsh git curl bat gh gpg

echo "📦 Instalando eza via .deb..."
wget https://github.com/eza-community/eza/releases/latest/download/eza_ubuntu_amd64.deb
sudo apt install -y ./eza_ubuntu_amd64.deb
rm eza_ubuntu_amd64.deb

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
