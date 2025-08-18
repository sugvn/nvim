return {
        'echasnovski/mini.surround',
        event="BufReadPost",
        version = false,
        config=function ()
                require("mini.surround").setup()
        end
}
