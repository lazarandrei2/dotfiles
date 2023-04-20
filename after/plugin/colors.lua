function ColorMyPencils(color)
	color = color or "base16-tomorrow-night"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
