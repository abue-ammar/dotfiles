
# Homebrew settings
export PATH="/opt/homebrew/bin:$PATH"

# Starship config
eval "$(starship init zsh)"

# NVM Settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/rekindle/.bun/_bun" ] && source "/Users/rekindle/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# zsh autocomplete
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Make Tab accept the autosuggestion zsh autocomplete
bindkey '^I' autosuggest-accept

# zsh syntax highlighting 
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrcsource /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# ---- Aliases ----
alias ll='ls -laFh --color=auto'
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

# ---- History Settings ----
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Added by Antigravity
export PATH="/Users/rekindle/.antigravity/antigravity/bin:$PATH"

# For Dot file aliasing
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
