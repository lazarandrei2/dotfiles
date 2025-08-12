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

/Users/lazarandrei/.local/bin/mise activate fish | source
