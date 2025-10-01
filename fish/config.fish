if status is-interactive
    # Commands to run in interactive sessions can go here
end

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# bat
set --export BAT_THEME "ansi"

# mise
/Users/lazarandrei/.local/bin/mise activate fish | source

# neovim
alias vim="nvim"

# sst
fish_add_path /Users/lazarandrei/.sst/bin

# cloudflare
set -gx TF_VAR_cloudflare_api_token "REPLACE"
set -gx TF_VAR_cloudflare_account_id "REPLACE" 
set -gx CLOUDFLARE_API_TOKEN "REPLACE"
