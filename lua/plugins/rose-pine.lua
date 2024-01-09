return {
    'rose-pine/neovim',
    name = 'rose-pine' ,
    config = function ()
        require('rose-pine').setup({
            disable_background = true,
            disable_float_background = true,
            dim_nc_background = false
        })

        function detectDarkModeMacOS()
            local command = "defaults read -g AppleInterfaceStyle 2>/dev/null"
            local handle = io.popen(command)
            if handle then
                local result = handle:read("*a")
                handle:close()

                if result and string.find(result, "Dark") then
                    return true  -- Dark mode detected
                else
                    return false  -- Light mode detected or unable to determine
                end
            end

            return nil  -- Unable to determine mode
        end

        vim.cmd.colorscheme("rose-pine")

        local mode = detectDarkModeMacOS()
        if mode == true then
            --vim.cmd.colorscheme "rose-pine"
        elseif mode == false then
           --vim.cmd.colorscheme "rose-pine-dawn"
        else
           --vim.cmd.colorscheme "rose-pine"
        end
    end
}
