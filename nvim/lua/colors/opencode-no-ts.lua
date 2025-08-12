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
	vim.api.nvim_set_hl(0, "CursorColumn", { bg = c.cursorline })
	vim.api.nvim_set_hl(0, "LineNr", { fg = c.bright_black, bg = c.gutter })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.fg, bg = c.gutter })
	vim.api.nvim_set_hl(0, "SignColumn", { fg = c.fg, bg = c.gutter })
	vim.api.nvim_set_hl(0, "Folded", { fg = c.comment, bg = c.black })
	vim.api.nvim_set_hl(0, "FoldColumn", { fg = c.comment, bg = c.gutter })

	-- Traditional Vim syntax groups
	vim.api.nvim_set_hl(0, "Comment", { fg = c.comment, italic = true })
	vim.api.nvim_set_hl(0, "Constant", { fg = c.amber })
	vim.api.nvim_set_hl(0, "String", { fg = c.green })
	vim.api.nvim_set_hl(0, "Character", { fg = c.green })
	vim.api.nvim_set_hl(0, "Number", { fg = c.amber })
	vim.api.nvim_set_hl(0, "Boolean", { fg = c.amber })
	vim.api.nvim_set_hl(0, "Float", { fg = c.amber })

	vim.api.nvim_set_hl(0, "Identifier", { fg = c.orange })
	vim.api.nvim_set_hl(0, "Function", { fg = c.blue, bold = true })

	vim.api.nvim_set_hl(0, "Statement", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "Conditional", { fg = c.red })
	vim.api.nvim_set_hl(0, "Repeat", { fg = c.red })
	vim.api.nvim_set_hl(0, "Label", { fg = c.red })
	vim.api.nvim_set_hl(0, "Operator", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "Keyword", { fg = c.red })
	vim.api.nvim_set_hl(0, "Exception", { fg = c.red })

	vim.api.nvim_set_hl(0, "PreProc", { fg = c.red })
	vim.api.nvim_set_hl(0, "Include", { fg = c.red })
	vim.api.nvim_set_hl(0, "Define", { fg = c.red })
	vim.api.nvim_set_hl(0, "Macro", { fg = c.red })
	vim.api.nvim_set_hl(0, "PreCondit", { fg = c.red })

	vim.api.nvim_set_hl(0, "Type", { fg = c.cyan })
	vim.api.nvim_set_hl(0, "StorageClass", { fg = c.cyan })
	vim.api.nvim_set_hl(0, "Structure", { fg = c.cyan })
	vim.api.nvim_set_hl(0, "Typedef", { fg = c.cyan })

	vim.api.nvim_set_hl(0, "Special", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "SpecialChar", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "Tag", { fg = c.red })
	vim.api.nvim_set_hl(0, "Delimiter", { fg = c.fg })
	vim.api.nvim_set_hl(0, "SpecialComment", { fg = c.comment, italic = true })
	vim.api.nvim_set_hl(0, "Debug", { fg = c.red })

	-- Error and diagnostics
	vim.api.nvim_set_hl(0, "Error", { fg = c.red, bold = true })
	vim.api.nvim_set_hl(0, "ErrorMsg", { fg = c.red, bold = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = c.yellow, bold = true })
	vim.api.nvim_set_hl(0, "Todo", { fg = c.yellow, bold = true })

	-- UI Elements
	vim.api.nvim_set_hl(0, "StatusLine", { fg = c.fg, bg = c.black })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = c.comment, bg = c.black })
	vim.api.nvim_set_hl(0, "TabLine", { fg = c.comment, bg = c.black })
	vim.api.nvim_set_hl(0, "TabLineFill", { fg = c.comment, bg = c.black })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = c.black })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = c.black })

	-- Popup menu
	vim.api.nvim_set_hl(0, "Pmenu", { fg = c.fg, bg = c.black })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = c.bg, bg = c.blue })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = c.black })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = c.bright_black })

	-- Search
	vim.api.nvim_set_hl(0, "Search", { fg = c.bg, bg = c.yellow })
	vim.api.nvim_set_hl(0, "IncSearch", { fg = c.bg, bg = c.orange })
	vim.api.nvim_set_hl(0, "CurSearch", { fg = c.bg, bg = c.orange })

	-- Diff
	vim.api.nvim_set_hl(0, "DiffAdd", { fg = c.green, bg = c.bg })
	vim.api.nvim_set_hl(0, "DiffChange", { fg = c.yellow, bg = c.bg })
	vim.api.nvim_set_hl(0, "DiffDelete", { fg = c.red, bg = c.bg })
	vim.api.nvim_set_hl(0, "DiffText", { fg = c.blue, bg = c.bg, bold = true })

	-- Spell checking
	vim.api.nvim_set_hl(0, "SpellBad", { fg = c.red, underline = true })
	vim.api.nvim_set_hl(0, "SpellCap", { fg = c.yellow, underline = true })
	vim.api.nvim_set_hl(0, "SpellLocal", { fg = c.cyan, underline = true })
	vim.api.nvim_set_hl(0, "SpellRare", { fg = c.magenta, underline = true })

	-- Matching parentheses
	vim.api.nvim_set_hl(0, "MatchParen", { fg = c.orange, bold = true, underline = true })

	-- Wildmenu
	vim.api.nvim_set_hl(0, "WildMenu", { fg = c.bg, bg = c.blue })

	-- Command line
	vim.api.nvim_set_hl(0, "ModeMsg", { fg = c.green })
	vim.api.nvim_set_hl(0, "MoreMsg", { fg = c.green })
	vim.api.nvim_set_hl(0, "Question", { fg = c.green })
end

return M
