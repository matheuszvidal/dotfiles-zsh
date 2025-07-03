#!/bin/bash

set -e

echo "🚀 Instalando pacotes base..."
sudo apt update
sudo apt install zsh git curl eza bat gh -y

echo "📦 Clonando plugins para ~/.zsh..."
mkdir -p ~/.zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/autosuggestions
git clone https://github.com/zsh-users/zsh-completions ~/.zsh/completions

echo "⚙️ Copiando .zshrc para ~"
cp .zshrc ~/
cp .p10k.zsh ~/

echo "✅ Instalado. Reinicie o shell ou rode: source ~/.zshrc"
