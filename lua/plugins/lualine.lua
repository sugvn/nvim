return
{
    'nvim-lualine/lualine.nvim',
    lazy=false,
    config=function()
      require('lualine').setup({
                options={
                    theme="tokyonight",
                    globalstatus=true,
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'filename'},
                    lualine_c = {'diff', 'diagnostics'},
                    lualine_x = {'filetype'},
                    lualine_y = {'branch'},
                    lualine_z = {'location'}
                  },
            })
    end
}
