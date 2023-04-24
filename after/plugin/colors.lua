function ColorMyPencils(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)
end

require('kanagawa').setup({
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    }
})

ColorMyPencils()
