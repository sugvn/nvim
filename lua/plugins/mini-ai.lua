return {
        'echasnovski/mini.ai',
        version = false,
        enabled = true,
        event = "User FilePost",
        config = function()
                require("mini.ai").setup()
        end
}
