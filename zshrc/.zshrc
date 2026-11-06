
# --- History setup ---
HISTFILE=$HOME/.zhistory
SAVEHIST=50000
HISTSIZE=50000
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# --- Keybindings (search history with arrows) ---
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# --- Completion (tab-completion for commands like gcloud, vp, git) ---
autoload -Uz compinit && compinit

# --- Useful tools ---
# Better ls
alias ls="eza --icons=always"

# Better cd (zoxide)
eval "$(zoxide init zsh)"
alias cd="z"

# Lazygit
alias lg="lazygit"

# --- Autosuggestions & syntax highlighting ---
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- Prompt (Starship, config in ~/.config/starship.toml) ---
eval "$(starship init zsh)"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"


# Google Cloud SDK (installed via `brew install --cask gcloud-cli`)
if [ -f '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/svz/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.local/bin:$PATH"

# custom killport command
killport() {
    port=$1
    kill -9 $(lsof -i TCP:${port} | awk '/LISTEN/{print $2}')
}
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Vite+ bin (https://viteplus.dev)
. "/Users/svz/.config/vite-plus/env"
