# ⚙️ dotfiles-zsh

Ambiente ZSH completo, moderno e bonito com instalação automática via script.

Este repositório contém:

- Tema [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- Plugins:
  - [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting)
  - [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions)
  - [`zsh-completions`](https://github.com/zsh-users/zsh-completions)
- Substitutos modernos para comandos:
  - `eza` no lugar de `ls`
  - `bat` no lugar de `cat`
- Alias prontos para produtividade
- Configuração personalizada do `Powerlevel10k`

---

## 🚀 Instalação

### 1. Clone o repositório

```bash
git clone https://github.com/<matheuszvidal>/dotfiles-zsh.git
cd dotfiles-zsh
```

### 2. Torne o script executável

```bash
chmod +x setup-zsh.sh
```

### 3. Execute o script

```bash
./setup-zsh.sh
```

> O script irá instalar os pacotes necessários (`zsh`, `eza`, `bat`, `gh`), plugins, tema e aplicar os arquivos `.zshrc` e `.p10k.zsh`.

---

## 🖼 Pré-requisitos

- Ubuntu (funciona perfeitamente no WSL)
- Terminal configurado com **Nerd Font** (ex: [MesloLGS NF](https://www.nerdfonts.com/font-downloads))

---

## 📁 Conteúdo

| Arquivo         | Função                                       |
|------------------|----------------------------------------------|
| `.zshrc`         | Configuração principal do ZSH                |
| `.p10k.zsh`      | Configuração do tema Powerlevel10k           |
| `setup-zsh.sh`   | Script de instalação e configuração automática |

---

## 👨‍💻 Autor

Matheus Zidane Vidal Ferro  

---

## 📜 Licença

Esse projeto não possui uma licença definida. Use, modifique e compartilhe à vontade.