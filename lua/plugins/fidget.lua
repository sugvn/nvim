return
{
        "j-hui/fidget.nvim",
        event = "BufReadPost",
        config = function()
                require("fidget").setup({})
        end
}
