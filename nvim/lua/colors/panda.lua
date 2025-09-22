local M = {}

M.colors = {
	bg = "#292A2B",
	fg = "#E6E6E6",
	red = "#FF2C6D",        -- color1
	green = "#19f9d8",      -- color2
	yellow = "#FFB86C",     -- color3
	blue = "#6FC1FF",       -- color4
	magenta = "#FF75B5",    -- color5
	cyan = "#B084EB",       -- color6
	black = "#676B79",      -- color7
	white = "#FFFFFF",      -- color8
	bright_black = "#757575", -- color9
	comment = "#676B79",
	selection = "#504230",
	cursorline = "#31353a", -- color10
	-- gutter = "#242526",   -- color11
	gutter = "#292A2B",
	color12 = "#19f9d8",  -- strings (cyan-green)
	color13 = "#FF9AC1",  -- variables (light pink)
	color14 = "#FFCC95",  -- functions (light orange)
	color15 = "#BBBBBB",  -- operators (light gray)
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
	vim.api.nvim_set_hl(0, "String", { fg = c.green })
	vim.api.nvim_set_hl(0, "Function", { fg = c.blue, bold = true })
	vim.api.nvim_set_hl(0, "Identifier", { fg = c.white })
	vim.api.nvim_set_hl(0, "Statement", { fg = c.magenta })
	vim.api.nvim_set_hl(0, "Type", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "Number", { fg = c.yellow })
	vim.api.nvim_set_hl(0, "Operator", { fg = c.color15 })

	-- Tree-sitter highlights
	vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
	vim.api.nvim_set_hl(0, "@function", { link = "Function" })
	vim.api.nvim_set_hl(0, "@keyword", { link = "Statement" })
	vim.api.nvim_set_hl(0, "@type", { link = "Type" })
	vim.api.nvim_set_hl(0, "@string", { link = "String" })
	vim.api.nvim_set_hl(0, "@number", { link = "Number" })
	vim.api.nvim_set_hl(0, "@variable", { link = "Identifier" })
	vim.api.nvim_set_hl(0, "@operator", { link = "Operator" })
end

return M
