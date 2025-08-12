local M = {}

function M.setup()
	vim.cmd("highlight clear")
	vim.o.background = "dark"
	vim.o.termguicolors = false -- Use ANSI colors

	-- Basic UI using ANSI color numbers
	vim.cmd("highlight Normal ctermfg=7 ctermbg=0")    -- White on Black
	vim.cmd("highlight Visual ctermbg=8")              -- Bright Black background
	vim.cmd("highlight CursorLine ctermbg=8")          -- Bright Black background
	vim.cmd("highlight CursorColumn ctermbg=8")        -- Bright Black background
	vim.cmd("highlight LineNr ctermfg=8 ctermbg=0")    -- Bright Black on Black
	vim.cmd("highlight CursorLineNr ctermfg=7 ctermbg=0") -- White on Black
	vim.cmd("highlight SignColumn ctermfg=7 ctermbg=0") -- White on Black
	vim.cmd("highlight Folded ctermfg=8 ctermbg=0")    -- Bright Black on Black
	vim.cmd("highlight FoldColumn ctermfg=8 ctermbg=0") -- Bright Black on Black

	-- Traditional Vim syntax groups using ANSI colors
	vim.cmd("highlight Comment ctermfg=8 cterm=italic")     -- Bright Black, italic
	vim.cmd("highlight Constant ctermfg=3")                 -- Yellow
	vim.cmd("highlight String ctermfg=2")                   -- Green
	vim.cmd("highlight Character ctermfg=2")                -- Green
	vim.cmd("highlight Number ctermfg=3")                   -- Yellow
	vim.cmd("highlight Boolean ctermfg=3")                  -- Yellow
	vim.cmd("highlight Float ctermfg=3")                    -- Yellow

	vim.cmd("highlight Identifier ctermfg=6")               -- Cyan
	vim.cmd("highlight Function ctermfg=4 cterm=bold")      -- Blue, bold

	vim.cmd("highlight Statement ctermfg=5")                -- Magenta
	vim.cmd("highlight Conditional ctermfg=1")              -- Red
	vim.cmd("highlight Repeat ctermfg=1")                   -- Red
	vim.cmd("highlight Label ctermfg=1")                    -- Red
	vim.cmd("highlight Operator ctermfg=7")                 -- White
	vim.cmd("highlight Keyword ctermfg=1")                  -- Red
	vim.cmd("highlight Exception ctermfg=1")                -- Red

	vim.cmd("highlight PreProc ctermfg=1")                  -- Red
	vim.cmd("highlight Include ctermfg=1")                  -- Red
	vim.cmd("highlight Define ctermfg=1")                   -- Red
	vim.cmd("highlight Macro ctermfg=1")                    -- Red
	vim.cmd("highlight PreCondit ctermfg=1")                -- Red

	vim.cmd("highlight Type ctermfg=6")                     -- Cyan
	vim.cmd("highlight StorageClass ctermfg=6")             -- Cyan
	vim.cmd("highlight Structure ctermfg=6")                -- Cyan
	vim.cmd("highlight Typedef ctermfg=6")                  -- Cyan

	vim.cmd("highlight Special ctermfg=5")                  -- Magenta
	vim.cmd("highlight SpecialChar ctermfg=5")              -- Magenta
	vim.cmd("highlight Tag ctermfg=1")                      -- Red
	vim.cmd("highlight Delimiter ctermfg=7")                -- White
	vim.cmd("highlight SpecialComment ctermfg=8 cterm=italic") -- Bright Black, italic
	vim.cmd("highlight Debug ctermfg=1")                    -- Red

	-- Error and diagnostics
	vim.cmd("highlight Error ctermfg=1 cterm=bold")   -- Red, bold
	vim.cmd("highlight ErrorMsg ctermfg=1 cterm=bold") -- Red, bold
	vim.cmd("highlight WarningMsg ctermfg=3 cterm=bold") -- Yellow, bold
	vim.cmd("highlight Todo ctermfg=3 cterm=bold")    -- Yellow, bold

	-- UI Elements
	vim.cmd("highlight StatusLine ctermfg=7 ctermbg=8") -- White on Bright Black
	vim.cmd("highlight StatusLineNC ctermfg=8 ctermbg=0") -- Bright Black on Black
	vim.cmd("highlight TabLine ctermfg=8 ctermbg=0")   -- Bright Black on Black
	vim.cmd("highlight TabLineFill ctermfg=8 ctermbg=0") -- Bright Black on Black
	vim.cmd("highlight TabLineSel ctermfg=7 ctermbg=0") -- White on Black
	vim.cmd("highlight VertSplit ctermfg=8")           -- Bright Black
	vim.cmd("highlight WinSeparator ctermfg=8")        -- Bright Black

	-- Popup menu
	vim.cmd("highlight Pmenu ctermfg=7 ctermbg=8") -- White on Bright Black
	vim.cmd("highlight PmenuSel ctermfg=0 ctermbg=4") -- Black on Blue
	vim.cmd("highlight PmenuSbar ctermbg=8")       -- Bright Black background
	vim.cmd("highlight PmenuThumb ctermbg=7")      -- White background

	-- Search
	vim.cmd("highlight Search ctermfg=0 ctermbg=3")            -- Black on Yellow
	vim.cmd("highlight IncSearch ctermfg=0 ctermbg=3 cterm=bold") -- Black on Yellow, bold
	vim.cmd("highlight CurSearch ctermfg=0 ctermbg=3 cterm=bold") -- Black on Yellow, bold

	-- Diff
	vim.cmd("highlight DiffAdd ctermfg=2")          -- Green
	vim.cmd("highlight DiffChange ctermfg=3")       -- Yellow
	vim.cmd("highlight DiffDelete ctermfg=1")       -- Red
	vim.cmd("highlight DiffText ctermfg=4 cterm=bold") -- Blue, bold

	-- Spell checking
	vim.cmd("highlight SpellBad ctermfg=1 cterm=underline") -- Red, underline
	vim.cmd("highlight SpellCap ctermfg=3 cterm=underline") -- Yellow, underline
	vim.cmd("highlight SpellLocal ctermfg=6 cterm=underline") -- Cyan, underline
	vim.cmd("highlight SpellRare ctermfg=5 cterm=underline") -- Magenta, underline

	-- Matching parentheses
	vim.cmd("highlight MatchParen ctermfg=3 cterm=bold,underline") -- Yellow, bold, underline

	-- Wildmenu
	vim.cmd("highlight WildMenu ctermfg=0 ctermbg=4") -- Black on Blue

	-- Command line
	vim.cmd("highlight ModeMsg ctermfg=2") -- Green
	vim.cmd("highlight MoreMsg ctermfg=2") -- Green
	vim.cmd("highlight Question ctermfg=2") -- Green

	-- Additional common highlight groups
	vim.cmd("highlight Directory ctermfg=4")               -- Blue
	vim.cmd("highlight Title ctermfg=5 cterm=bold")        -- Magenta, bold
	vim.cmd("highlight NonText ctermfg=8")                 -- Bright Black
	vim.cmd("highlight SpecialKey ctermfg=8")              -- Bright Black
	vim.cmd("highlight Underlined ctermfg=4 cterm=underline") -- Blue, underline

	-- LSP and diagnostic highlights (if available)
	vim.cmd("highlight DiagnosticError ctermfg=1") -- Red
	vim.cmd("highlight DiagnosticWarn ctermfg=3") -- Yellow
	vim.cmd("highlight DiagnosticInfo ctermfg=4") -- Blue
	vim.cmd("highlight DiagnosticHint ctermfg=6") -- Cyan

	-- Git signs (if using gitsigns.nvim or similar)
	vim.cmd("highlight GitSignsAdd ctermfg=2") -- Green
	vim.cmd("highlight GitSignsChange ctermfg=3") -- Yellow
	vim.cmd("highlight GitSignsDelete ctermfg=1") -- Red
end

return M
