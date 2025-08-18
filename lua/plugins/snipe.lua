return {
        "leath-dub/snipe.nvim",
        event="UIEnter",
        config = function()
                local snipe=require("snipe")
                snipe.setup({
                        ui = {
                                hints = {
                                        dictionary = "1234567890"
                                }
                        }
                })
                vim.keymap.set("n","gb",snipe.open_buffer_menu)
        end
}
