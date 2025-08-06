return
{
        "j-hui/fidget.nvim",
        event = "User FilePost",
        config = function()
                require("fidget").setup({})
        end
}
