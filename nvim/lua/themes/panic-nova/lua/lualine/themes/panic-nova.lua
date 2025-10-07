local function rgb_to_hex(r, g, b)
	return string.format("#%02x%02x%02x", math.floor(r * 255), math.floor(g * 255), math.floor(b * 255))
end

local colors = {
	bg = rgb_to_hex(0.108, 0.114, 0.12),
	fg = rgb_to_hex(0.81, 0.855, 0.9),
	bg_light = rgb_to_hex(0.15, 0.16, 0.17),
	bg_lighter = rgb_to_hex(0.2, 0.21, 0.22),
	
	blue = rgb_to_hex(0.45, 0.675, 0.9),
	cyan = rgb_to_hex(0.36, 0.9, 0.855),
	green = rgb_to_hex(0.447, 0.898, 0.686),
	yellow = rgb_to_hex(0.92, 0.828, 0.552),
	orange = rgb_to_hex(1, 0.775, 0.5),
	red = rgb_to_hex(0.97, 0.584, 0.534),
	purple = rgb_to_hex(0.765, 0.63, 0.9),
	
	gutter_fg = rgb_to_hex(0.36, 0.38, 0.4),
}

return {
	normal = {
		a = { bg = colors.blue, fg = colors.bg, gui = 'bold' },
		b = { bg = colors.bg_light, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.gutter_fg },
	},
	insert = {
		a = { bg = colors.green, fg = colors.bg, gui = 'bold' },
		b = { bg = colors.bg_light, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.gutter_fg },
	},
	visual = {
		a = { bg = colors.purple, fg = colors.bg, gui = 'bold' },
		b = { bg = colors.bg_light, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.gutter_fg },
	},
	replace = {
		a = { bg = colors.red, fg = colors.bg, gui = 'bold' },
		b = { bg = colors.bg_light, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.gutter_fg },
	},
	command = {
		a = { bg = colors.yellow, fg = colors.bg, gui = 'bold' },
		b = { bg = colors.bg_light, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.gutter_fg },
	},
	inactive = {
		a = { bg = colors.bg_light, fg = colors.gutter_fg },
		b = { bg = colors.bg, fg = colors.gutter_fg },
		c = { bg = colors.bg, fg = colors.gutter_fg },
	},
}
