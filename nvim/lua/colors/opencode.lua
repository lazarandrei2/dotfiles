local M = {}
M.colors = {
	bg = "#212121",      -- background
	fg = "#e0e0e0",      -- foreground
	red = "#e06c75",     -- palette = 3
	green = "#7fd88f",   -- palette = 5
	yellow = "#e5c07b",  -- palette = 7
	blue = "#5c9cf5",    -- palette = 1
	magenta = "#9d7cd8", -- palette = 2
	cyan = "#56b6c2",    -- palette = 6
	black = "#4b4c5c",   -- palette = 8
	white = "#e0e0e0",   -- foreground
	bright_black = "#757575",
	comment = "#4b4c5c", -- palette = 8
	selection = "#303030", -- selection-background
	cursorline = "#2a2a2a", -- slightly lighter than bg
	gutter = "#212121",  -- same as background
	orange = "#fab283",  -- palette = 0
	amber = "#f5a742",   -- palette = 4
}

function M.setup()
	local c = M.colors
	vim.cmd("highlight clear")
	vim.o.background = "dark"
	vim.o.termguicolors = true

	-- Basic UI
	vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "Visual", { bg = c.selection })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = c.cursorline })
	vim.api.nvim_set_hl(0, "LineNr", { fg = c.bright_black, bg = c.gutter })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.fg, bg = c.gutter })

	-- Syntax
	vim.api.nvim_set_hl(0, "Comment", { fg = c.comment, italic = true })
	vim.api.nvim_set_hl(0, "String", { fg = c.green })            -- palette = 5 (green)
	vim.api.nvim_set_hl(0, "Function", { fg = c.blue, bold = true }) -- palette = 1 (blue)
	vim.api.nvim_set_hl(0, "Identifier", { fg = c.orange })       -- palette = 0 (orange)
	vim.api.nvim_set_hl(0, "Statement", { fg = c.magenta })       -- palette = 2 (purple)
	vim.api.nvim_set_hl(0, "Type", { fg = c.cyan })               -- palette = 6 (cyan)
	vim.api.nvim_set_hl(0, "Number", { fg = c.amber })            -- palette = 4 (amber)
	vim.api.nvim_set_hl(0, "Operator", { fg = c.yellow })         -- palette = 7 (yellow)
	vim.api.nvim_set_hl(0, "Keyword", { fg = c.red })             -- palette = 3 (red)

	-- Additional syntax elements
	vim.api.nvim_set_hl(0, "Constant", { fg = c.amber })
	vim.api.nvim_set_hl(0, "Special", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "PreProc", { fg = c.red })
	vim.api.nvim_set_hl(0, "Error", { fg = c.red, bold = true })
	vim.api.nvim_set_hl(0, "Warning", { fg = c.yellow, bold = true })

	-- Tree-sitter highlights
	vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
	vim.api.nvim_set_hl(0, "@function", { link = "Function" })
	vim.api.nvim_set_hl(0, "@keyword", { link = "Statement" })
	vim.api.nvim_set_hl(0, "@type", { link = "Type" })
	vim.api.nvim_set_hl(0, "@string", { link = "String" })
	vim.api.nvim_set_hl(0, "@number", { link = "Number" })
	vim.api.nvim_set_hl(0, "@variable", { link = "Identifier" })
	vim.api.nvim_set_hl(0, "@operator", { link = "Operator" })
	vim.api.nvim_set_hl(0, "@keyword.return", { fg = c.red })
	vim.api.nvim_set_hl(0, "@keyword.function", { fg = c.red })
	vim.api.nvim_set_hl(0, "@constant", { link = "Constant" })
	vim.api.nvim_set_hl(0, "@punctuation", { fg = c.fg })
	vim.api.nvim_set_hl(0, "@tag", { fg = c.red })
	vim.api.nvim_set_hl(0, "@attribute", { fg = c.yellow })

	-- UI Elements
	vim.api.nvim_set_hl(0, "StatusLine", { fg = c.fg, bg = c.black })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = c.comment, bg = c.black })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = c.black })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = c.fg, bg = c.black })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = c.bg, bg = c.blue })
	vim.api.nvim_set_hl(0, "Search", { fg = c.bg, bg = c.yellow })
	vim.api.nvim_set_hl(0, "IncSearch", { fg = c.bg, bg = c.orange })
end

return M
