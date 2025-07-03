# ─── POWERLEVEL10K INSTANT PROMPT ──────────────────────────────────────────────
# Deve ficar no topo. Carrega o prompt instantâneo antes de qualquer outra coisa.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ─── HISTÓRICO E CONFIG PADRÃO DO ZSH ──────────────────────────────────────────
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e

# ─── ARQUIVO DE CONFIGURAÇÃO DO COMPINSTALL ───────────────────────────────────
zstyle :compinstall filename "$HOME/.zshrc"

# ─── POWERLEVEL10K CONFIGURAÇÃO VISUAL ────────────────────────────────────────
# Edite ~/.p10k.zsh ou execute `p10k configure` para personalizar o prompt.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ─── PLUGINS ZSH (EM ~/.zsh) ───────────────────────────────────────────────────
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/autosuggestions/zsh-autosuggestions.zsh

# ─── COMPLETIONS ──────────────────────────────────────────────────────────────
fpath+=~/.zsh/completions
autoload -Uz compinit
compinit

# ─── ALIASES MODERNOS ─────────────────────────────────────────────────────────

# Substituto do 'ls' com ícones e diretórios primeiro
alias ls='exa --icons --group-directories-first --color=always'
alias ll='exa -l --icons --group-directories-first --color=always'
alias la='exa -la --icons --group-directories-first --color=always'
alias lt='exa -T --icons --color=always' # árvore de diretórios

# Substituto do 'cat' com syntax highlight
alias cat='batcat --style=plain --paging=never'

# grep com destaque colorido
alias grep='grep --color=auto'

# mkdir com -p (cria pastas pai) e -v (mostra o que criou)
alias mkdir='mkdir -pv'

# Navegação rápida entre diretórios
alias ..='cd ..'
alias ...='cd ../..'

# Comandos mais seguros com confirmação e saída verbosa
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

# Limpar terminal
alias c='clear'

# ─── FIM DO .zshrc ─────────────────────────────────────────────────────────────
