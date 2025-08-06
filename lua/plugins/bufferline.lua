return {
        'akinsho/bufferline.nvim',
        event = { "User FilePost" },
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
                local bufferline = require("bufferline")
                bufferline.setup {
                        options = {
                                mode = "buffers",
                                style_preset = { bufferline.style_preset.minimal, bufferline.style_preset.no_italic },
                                numbers = function(opts)
                                        return string.format('%s', opts.raise(opts.ordinal))
                                end,
                                show_close_icon = false,
                                show_buffer_close_icons = false,
                                show_tab_indicators = false,
                                modified_icon = "*",
                                separator_style = "none",
                                tab_size = 12,
                                indicator = {
                                        style = "none",
                                },
                                always_show_bufferline = false,
                                offsets = {
                                        {
                                                filetype = "NvimTree",
                                        }
                                }
                        }
                }
        end
}
