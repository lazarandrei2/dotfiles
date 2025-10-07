vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "panic-nova"

local function rgb_to_hex(r, g, b)
	return string.format("#%02x%02x%02x", math.floor(r * 255), math.floor(g * 255), math.floor(b * 255))
end

local colors = {
	bg = rgb_to_hex(0.108, 0.114, 0.12),
	fg = rgb_to_hex(0.81, 0.855, 0.9),
	cursor_line = rgb_to_hex(0.135, 0.143, 0.15),
	gutter_bg = rgb_to_hex(0.09, 0.095, 0.1),
	gutter_fg = rgb_to_hex(0.36, 0.38, 0.4),
	gutter_selected = rgb_to_hex(0.717, 0.757, 0.797),
	
	comment = rgb_to_hex(0.48, 0.6, 0.72),
	comment_doc = rgb_to_hex(0.775, 0.85, 0.925),
	
	keyword = rgb_to_hex(0.45, 0.675, 0.9),
	keyword_modifier = rgb_to_hex(0.45, 0.825, 0.9),
	
	string = rgb_to_hex(0.97, 0.584, 0.534),
	string_delim = rgb_to_hex(0.95, 0.405, 0.332),
	string_escape = rgb_to_hex(1, 0.691, 0.65),
	
	number = rgb_to_hex(0.92, 0.828, 0.552),
	number_prefix = rgb_to_hex(0.82, 0.7, 0.533),
	
	type = rgb_to_hex(0.36, 0.9, 0.855),
	type_declare = rgb_to_hex(1, 0.775, 0.5),
	
	variable = rgb_to_hex(0.765, 0.63, 0.9),
	variable_prefix = rgb_to_hex(0.91, 0.82, 1),
	
	property = rgb_to_hex(0.9, 0.63, 0.81),
	property_prefix = rgb_to_hex(1, 0.82, 0.94),
	
	func = rgb_to_hex(0.447, 0.898, 0.686),
	func_prefix = rgb_to_hex(0.6, 1, 0.813),
	
	operator = rgb_to_hex(0.6, 0.7, 0.8),
	bracket = rgb_to_hex(0.6, 0.7, 0.8),
	
	decorator = rgb_to_hex(0.45, 0.825, 0.9),
	
	tag_name = rgb_to_hex(0.447, 0.898, 0.686),
	tag_attr = rgb_to_hex(0.69, 0.9, 0.54),
	
	link = rgb_to_hex(0.5, 0.75, 1),
	
	error_bg = rgb_to_hex(1, 0.333, 0.2),
	
	indent_guide = rgb_to_hex(0.459, 0.48, 0.501),
}

local highlights = {
	Normal = { fg = colors.fg, bg = colors.bg },
	NormalFloat = { fg = colors.fg, bg = colors.bg },
	
	CursorLine = { bg = colors.cursor_line },
	CursorLineNr = { fg = colors.gutter_selected, bg = colors.gutter_bg },
	LineNr = { fg = colors.gutter_fg },
	
	SignColumn = { bg = colors.bg },
	
	Comment = { fg = colors.comment, italic = true },
	
	Keyword = { fg = colors.keyword },
	Conditional = { fg = colors.keyword },
	Repeat = { fg = colors.keyword },
	Statement = { fg = colors.keyword },
	Include = { fg = colors.keyword },
	
	String = { fg = colors.string },
	Character = { fg = colors.string },
	
	Number = { fg = colors.number },
	Boolean = { fg = colors.keyword },
	Float = { fg = colors.number },
	
	Type = { fg = colors.type },
	TypeDef = { fg = colors.type_declare, bold = true },
	Structure = { fg = colors.type_declare },
	StorageClass = { fg = colors.keyword_modifier, italic = true },
	
	Identifier = { fg = colors.variable },
	Variable = { fg = colors.variable },
	Constant = { fg = colors.variable },
	
	Function = { fg = colors.func },
	
	Operator = { fg = colors.operator },
	Delimiter = { fg = colors.bracket },
	
	Special = { fg = colors.decorator },
	SpecialChar = { fg = colors.string_escape },
	
	Tag = { fg = colors.tag_name },
	
	Error = { fg = colors.fg, bg = colors.error_bg },
	
	Visual = { bg = rgb_to_hex(0.2, 0.25, 0.3) },
	Search = { fg = colors.bg, bg = colors.number },
	IncSearch = { fg = colors.bg, bg = colors.func },
	
	Pmenu = { fg = colors.fg, bg = rgb_to_hex(0.15, 0.16, 0.17) },
	PmenuSel = { fg = colors.bg, bg = colors.keyword },
	PmenuSbar = { bg = rgb_to_hex(0.2, 0.21, 0.22) },
	PmenuThumb = { bg = colors.gutter_fg },
	
	StatusLine = { fg = colors.fg, bg = rgb_to_hex(0.15, 0.16, 0.17) },
	StatusLineNC = { fg = colors.gutter_fg, bg = rgb_to_hex(0.12, 0.13, 0.14) },
	
	VertSplit = { fg = rgb_to_hex(0.2, 0.21, 0.22) },
	
	IndentBlanklineChar = { fg = colors.indent_guide },
	
	["@comment"] = { link = "Comment" },
	["@keyword"] = { link = "Keyword" },
	["@keyword.function"] = { fg = colors.keyword },
	["@keyword.return"] = { fg = colors.keyword },
	["@keyword.operator"] = { fg = colors.keyword },
	["@conditional"] = { link = "Conditional" },
	["@repeat"] = { link = "Repeat" },
	["@include"] = { link = "Include" },
	
	["@string"] = { link = "String" },
	["@string.escape"] = { fg = colors.string_escape },
	["@string.special"] = { fg = colors.string_escape },
	
	["@number"] = { link = "Number" },
	["@boolean"] = { link = "Boolean" },
	["@float"] = { link = "Float" },
	
	["@type"] = { link = "Type" },
	["@type.builtin"] = { fg = colors.type },
	["@type.definition"] = { link = "TypeDef" },
	
	["@variable"] = { link = "Variable" },
	["@variable.builtin"] = { fg = colors.variable_prefix },
	["@constant"] = { link = "Constant" },
	["@constant.builtin"] = { fg = colors.keyword },
	
	["@function"] = { link = "Function" },
	["@function.builtin"] = { fg = colors.func },
	["@function.call"] = { fg = colors.func },
	["@method"] = { fg = colors.func },
	["@method.call"] = { fg = colors.func },
	
	["@property"] = { fg = colors.property },
	["@field"] = { fg = colors.property },
	
	["@parameter"] = { fg = colors.variable },
	
	["@operator"] = { link = "Operator" },
	["@punctuation.delimiter"] = { link = "Delimiter" },
	["@punctuation.bracket"] = { fg = colors.bracket },
	
	["@tag"] = { link = "Tag" },
	["@tag.attribute"] = { fg = colors.tag_attr },
	["@tag.delimiter"] = { fg = colors.operator },
	
	["@constructor"] = { fg = colors.type },
	
	["@namespace"] = { fg = colors.type },
	
	["@decorator"] = { fg = colors.decorator },
	["@annotation"] = { fg = colors.decorator },
	
	["@text.uri"] = { fg = colors.link, underline = true },
	["@text.emphasis"] = { italic = true },
	["@text.strong"] = { bold = true },
}

for group, hl in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, hl)
end
