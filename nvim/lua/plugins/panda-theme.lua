return {
	'folke/tokyonight.nvim', -- Use tokyonight as base since it's more flexible
	lazy = false,
	priority = 1000,

	config = function()
		-- Configure tokyonight with Panda colors
		require('tokyonight').setup({
			style = "night",
			transparent = false,
			terminal_colors = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = false },
				functions = { italic = false },
				variables = { italic = false },
			},
			on_colors = function(colors)
				-- Override with Panda colors
				colors.bg = "#292A2B"
				colors.bg_dark = "#242526"
				colors.bg_float = "#31353a"
				colors.bg_highlight = "#31353a"
				colors.bg_popup = "#31353a"
				colors.bg_search = "#FFB86C"
				colors.bg_statusline = "#31353a"
				colors.bg_visual = "#373B41"
				colors.fg = "#E6E6E6"
				colors.fg_dark = "#CDCDCD"
				colors.fg_float = "#E6E6E6"
				colors.fg_gutter = "#676B79"
				colors.fg_sidebar = "#E6E6E6"

				-- Syntax colors
				colors.red = "#FF2C6D"
				colors.orange = "#FFB86C"
				colors.yellow = "#FFB86C"
				colors.green = "#19f9d8"
				colors.cyan = "#6FC1FF"
				colors.blue = "#45A9F9"
				colors.magenta = "#B084EB"
				colors.purple = "#B084EB"

				-- Additional overrides
				colors.comment = "#676B79"
				colors.error = "#FF2C6D"
				colors.warning = "#FFB86C"
				colors.hint = "#45A9F9"
				colors.info = "#6FC1FF"

				-- Git colors
				colors.git = {
					add = "#19f9d8",
					change = "#45A9F9",
					delete = "#FF2C6D",
					ignore = "#676B79",
				}

				return colors
			end,
			on_highlights = function(highlights, colors)
				-- Override specific highlights with Panda colors
				highlights.Comment = { fg = "#676B79", italic = true }
				highlights.Keyword = { fg = "#FF75B5" } -- pink
				highlights.Function = { fg = "#6FC1FF" } -- light blue
				highlights.String = { fg = "#19f9d8" }  -- green
				highlights.Number = { fg = "#FFB86C" }  -- orange
				highlights.Boolean = { fg = "#FFB86C" } -- orange
				highlights.Constant = { fg = "#FFB86C" } -- orange
				highlights.Type = { fg = "#19f9d8", italic = true } -- green
				highlights.Variable = { fg = "#E6E6E6" } -- fg
				highlights.Operator = { fg = "#E6E6E6" } -- fg
				highlights.Delimiter = { fg = "#E6E6E6" } -- fg
				highlights.Punctuation = { fg = "#E6E6E6" } -- fg

				-- Treesitter specific
				highlights["@keyword"] = { fg = "#FF75B5" }      -- pink
				highlights["@function"] = { fg = "#6FC1FF" }     -- light blue
				highlights["@string"] = { fg = "#19f9d8" }       -- green
				highlights["@number"] = { fg = "#FFB86C" }       -- orange
				highlights["@boolean"] = { fg = "#FFB86C" }      -- orange
				highlights["@type"] = { fg = "#19f9d8", italic = true } -- green
				highlights["@variable"] = { fg = "#E6E6E6" }     -- fg
				highlights["@parameter"] = { fg = "#BBBBBB", italic = true } -- contrast gray
				highlights["@comment"] = { fg = "#676B79", italic = true } -- light gray
				highlights["@constant"] = { fg = "#FFB86C" }     -- orange
				highlights["@operator"] = { fg = "#E6E6E6" }     -- fg
				highlights["@punctuation"] = { fg = "#E6E6E6" }  -- fg
				highlights["@delimiter"] = { fg = "#E6E6E6" }    -- fg

				-- LSP
				highlights.LspReferenceText = { bg = "#31353a" } -- bg_light
				highlights.LspReferenceRead = { bg = "#31353a" } -- bg_light
				highlights.LspReferenceWrite = { bg = "#31353a" } -- bg_light

				-- Telescope
				highlights.TelescopeNormal = { fg = "#E6E6E6", bg = "#292A2B" } -- fg, bg
				highlights.TelescopeBorder = { fg = "#45A9F9", bg = "#292A2B" } -- blue, bg
				highlights.TelescopePromptNormal = { fg = "#E6E6E6", bg = "#31353a" } -- fg, bg_light
				highlights.TelescopePromptBorder = { fg = "#45A9F9", bg = "#31353a" } -- blue, bg_light
				highlights.TelescopeResultsNormal = { fg = "#E6E6E6", bg = "#292A2B" } -- fg, bg
				highlights.TelescopePreviewNormal = { fg = "#E6E6E6", bg = "#292A2B" } -- fg, bg

				-- NeoTree
				highlights.NeoTreeNormal = { fg = "#E6E6E6", bg = "#292A2B" } -- fg, bg
				highlights.NeoTreeNormalNC = { fg = "#E6E6E6", bg = "#292A2B" } -- fg, bg
				highlights.NeoTreeDirectoryName = { fg = "#6FC1FF" } -- light blue
				highlights.NeoTreeDirectoryIcon = { fg = "#45A9F9" } -- blue
				highlights.NeoTreeRootName = { fg = "#B084EB", bold = true } -- purple
				highlights.NeoTreeGitAdded = { fg = "#19f9d8" }     -- green
				highlights.NeoTreeGitModified = { fg = "#FFB86C" }  -- orange
				highlights.NeoTreeGitDeleted = { fg = "#FF2C6D" }   -- red
				highlights.NeoTreeGitIgnored = { fg = "#676B79" }   -- light gray
			end
		})

		-- Load the colorscheme
		vim.cmd("colorscheme tokyonight")

		-- Update lualine to use Panda theme if lualine is available
		local status_ok, lualine = pcall(require, 'lualine')
		if status_ok then
			local panda_lualine = {
				normal = {
					a = { bg = "#45A9F9", fg = "#242526", gui = 'bold' },
					b = { bg = "#31353a", fg = "#E6E6E6" },
					c = { bg = "#292A2B", fg = "#E6E6E6" },
				},
				insert = {
					a = { bg = "#19f9d8", fg = "#242526", gui = 'bold' },
					b = { bg = "#31353a", fg = "#E6E6E6" },
					c = { bg = "#292A2B", fg = "#E6E6E6" },
				},
				visual = {
					a = { bg = "#B084EB", fg = "#242526", gui = 'bold' },
					b = { bg = "#31353a", fg = "#E6E6E6" },
					c = { bg = "#292A2B", fg = "#E6E6E6" },
				},
				replace = {
					a = { bg = "#FF2C6D", fg = "#242526", gui = 'bold' },
					b = { bg = "#31353a", fg = "#E6E6E6" },
					c = { bg = "#292A2B", fg = "#E6E6E6" },
				},
				command = {
					a = { bg = "#FFB86C", fg = "#242526", gui = 'bold' },
					b = { bg = "#31353a", fg = "#E6E6E6" },
					c = { bg = "#292A2B", fg = "#E6E6E6" },
				},
				inactive = {
					a = { bg = "#242526", fg = "#676B79", gui = 'bold' },
					b = { bg = "#242526", fg = "#676B79" },
					c = { bg = "#242526", fg = "#676B79" },
				},
			}

			lualine.setup {
				options = {
					theme = panda_lualine,
					component_separators = { left = '', right = '' },
					section_separators = { left = '', right = '' },
					disabled_filetypes = {},
				},
				sections = {
					lualine_a = { 'mode' },
					lualine_b = { 'branch', 'diff', 'diagnostics' },
					lualine_c = { 'filename' },
					lualine_x = { 'encoding', 'fileformat', 'filetype' },
					lualine_y = { 'progress' },
					lualine_z = { 'location' }
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { 'filename' },
					lualine_x = { 'location' },
					lualine_y = {},
					lualine_z = {}
				},
				tabline = {},
				extensions = {}
			}
		end
	end
}

