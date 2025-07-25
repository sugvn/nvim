return {'akinsho/bufferline.nvim', event={"User FilePost"}, version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
config=function()
        local bufferline=require("bufferline")
        bufferline.setup{
            options={
                mode="buffers",
                style_preset=bufferline.style_preset.default,
                numbers="none",
                show_close_icon=false,
                show_buffer_close_icons=false,
                show_tab_indicators=false,
                separator_style="none",
                indicator={
                    style="none"
                },
                always_show_bufferline=false,
                offsets={
                    {
                        filetype="NvimTree",
                    }
                }
            }
        }
    end
}
