#!/bin/bash

set -e

echo "🚀 Instalando pacotes base..."
sudo apt update
sudo apt install -y zsh git curl bat gh gpg

echo "📦 Instalando eza..."
curl -fsSL https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | gpg --dearmor | sudo tee /usr/share/keyrings/eza-archive-keyring.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/eza-archive-keyring.gpg] https://eza-community.github.io/eza-deb stable main" | sudo tee /etc/apt/sources.list.d/eza.list >/dev/null
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
