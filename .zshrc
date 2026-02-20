# -----------------------------
# ENV & PATHS
# -----------------------------

# Homebrew (Apple Silicon)
export PATH="/opt/homebrew/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS=1

# Starship config path
STARSHIP_CONFIG=${HOME}/.config/starship.toml

# Golang
export GOPATH="$HOME/go"
export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Antigravity
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"


# -----------------------------
# NODE VERSION MANAGER
# -----------------------------

eval "$(fnm env --use-on-cd --shell zsh)"


# -----------------------------
# COMPLETION SYSTEM
# -----------------------------

autoload -Uz compinit

# Rebuild compdump only if older than 24h
if [[ ! -f ~/.zcompdump || ~/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'


# -----------------------------
# PROMPT
# -----------------------------

eval "$(starship init zsh)"


# -----------------------------
# PLUGINS
# -----------------------------

# Autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# Syntax Highlighting (must be last)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]='none'
ZSH_HIGHLIGHT_STYLES[path_prefix]='none'
ZSH_HIGHLIGHT_STYLES[autodirectory]='none'


# -----------------------------
# KEY BINDINGS
# -----------------------------

bindkey '^I' autosuggest-accept
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward


# -----------------------------
# TOOL COMPLETIONS
# -----------------------------

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"


# -----------------------------
# ALIASES
# -----------------------------

alias ll='ls -laFh'
alias la='ls -A'
alias l='ls -CF'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gd='git diff'
alias gco='git checkout'

alias ..='cd ..'
alias ...='cd ../..'

alias zshrc='open -e ~/.zshrc'
alias reload='source ~/.zshrc'


# -----------------------------
# HISTORY
# -----------------------------

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE


# -----------------------------
# EDITOR
# -----------------------------

export EDITOR="open -e -W"
export VISUAL="$EDITOR"
