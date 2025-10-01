# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration written in Lua using the lazy.nvim plugin manager. The configuration is modular, separating core settings, keymaps, plugins, and custom color schemes.

## Architecture

### Entry Point
- `init.lua` - Loads the configurations module and sets Elixir-specific indentation rules

### Core Configuration (`lua/configurations/`)
- `init.lua` - Loads remap, set, and lazy modules; defines filetype-specific settings
- `set.lua` - Vim options (line numbers, tabs, undo, clipboard, etc.). Notable: uses tabs (not spaces), cmdheight=0, termguicolors=false, leader is space
- `remap.lua` - Custom keybindings (leader+pv for file explorer, split navigation, visual mode line movement)
- `lazy.lua` - Bootstraps lazy.nvim plugin manager, loads all plugins from `lua/plugins/`

### Plugin Organization (`lua/plugins/`)
Each plugin is defined in its own file returning a lazy.nvim plugin spec table. Key plugins:
- `lsp-config.lua` - Mason + nvim-lspconfig setup with LSP servers: sourcekit, lua_ls, zls, gopls, html, tailwindcss, rust_analyzer, gleam
- `telescope.lua` - Fuzzy finder with vertical layout, keybinds for file/git/grep search
- `neo-tree.lua` - File tree (toggle with `\`)
- `completions.lua` - nvim-cmp + LuaSnip for autocompletion
- `treesitter.lua` - Syntax highlighting with auto-install
- `none-ls.lua` - Formatting with stylua, gofumpt, prettier (4-space indentation)
- Theme plugins: catppuccin, rose-pine, nord, kanagawa, monokai-pro, xcode, vesper, pixel, tokyo-night

### Custom Themes (`lua/colors/`)
- `panda.lua`, `anysphere.lua`, `opencode.lua`, `opencode-no-ts.lua`, `ansi.lua` - Custom color scheme implementations with `M.setup()` function

## Key Keybindings

- Leader key: `<Space>`
- `<leader>pv` - Open file explorer (Ex)
- `<leader>c` - Close buffer
- `<leader>v` - Vertical split
- `<leader>h/j/k/l` - Navigate splits
- `<leader>pf` - Telescope find files
- `<leader>pg` or `<C-p>` - Telescope git files
- `<leader>fg` - Telescope live grep
- `<leader>ps` - Telescope grep with input
- `<leader>gf` - Format buffer
- `\` - Toggle NeoTree
- `jk` - Exit insert mode (mapped to ESC)
- `J/K` in visual mode - Move lines up/down

## LSP Features

- `K` - Hover documentation
- `gd` - Go to definition
- `gr` - Find references
- `U` - Open diagnostics float
- `<leader>ca` - Code actions

## Adding/Modifying Plugins

1. Create/edit a file in `lua/plugins/` that returns a lazy.nvim spec
2. The plugin will be auto-loaded by `require("lazy").setup("plugins")` in `lua/configurations/lazy.lua`
3. No need to manually require the plugin file

## Theme Management

- Themes can be loaded by calling `require("colors.themename").setup()` in init.lua
- Currently panda theme is commented out in init.lua
- Plugin-based themes are in `lua/plugins/` and configured via their own setup
