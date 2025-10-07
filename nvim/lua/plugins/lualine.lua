return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons', 'lazarandrei/panic-nova.nvim' },

	config = function()
		local panic_nova_theme = require('themes.panic-nova.lua.lualine.themes.panic-nova')
		require('lualine').setup {
			options = {
				theme = panic_nova_theme,
				component_separators = { left = '', right = '' },
				section_separators = { left = '\u{e0b4}', right = '\u{e0b6}' },
				disabled_filetypes = {},
			},
			sections = {
				lualine_a = { { 'mode', separator = { right = '', left = '\u{e0b6}' } } },
				lualine_b = { 'branch', 'diff', 'diagnostics' },
				lualine_c = { 'filename' },
				lualine_x = { 'encoding', 'fileformat', 'filetype' },
				lualine_y = { 'progress' },
				lualine_z = { { 'location', separator = { right = '\u{e0b4}', left = '' } } }
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
}
