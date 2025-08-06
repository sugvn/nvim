return
{
        'nvim-lualine/lualine.nvim',
        event = "UIEnter",
        config = function()
                local clients_lsp = function()
                        local bufnr = vim.api.nvim_get_current_buf()

                        local clients = vim.lsp.get_clients({ bufnr = bufnr })
                        if next(clients) == nil then
                                return ''
                        end

                        local c = {}
                        for _, client in pairs(clients) do
                                table.insert(c, client.name)
                        end
                        return '\u{f085}  ' .. table.concat(c, '|')
                end

                require('lualine').setup({
                        options = {
                                theme = "auto",
                                globalstatus = true,
                        },
                        sections = {
                                lualine_a = { 'mode' },
                                lualine_b = { 'filename' },
                                lualine_c = { 'diff', 'diagnostics' },
                                lualine_x = { 'filetype', clients_lsp },
                                lualine_y = { 'branch' },
                                lualine_z = { 'location' }
                        },
                })
        end
}
