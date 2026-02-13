# -----------------------------
# PATHS
# -----------------------------

# Homebrew (Apple Silicon)
export PATH="/opt/homebrew/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS=1

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Golang
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$(go env GOPATH)/bin"

# Antigravity
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"


# -----------------------------
# STARSHIP PROMPT
# -----------------------------

eval "$(starship init zsh)"


# -----------------------------
# FNM (NODE VERSION MANAGER)
# -----------------------------

eval "$(fnm env --use-on-cd --shell zsh)"


# -----------------------------
# ZSH PLUGINS
# -----------------------------

# Autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax Highlighting (must be last)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Accept autosuggestion with TAB
bindkey '^I' autosuggest-accept


# -----------------------------
# BUN COMPLETIONS
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

