return {
        "folke/tokyonight.nvim",
        enabled = true,
        lazy = false,
        priority = 1000,
        config = function()
                require("tokyonight").setup({
                        styles = {
                                sidebars = "transparent",
                                floats = "transparent",
                        },
                        transparent = true,
                })
                vim.cmd [[colorscheme tokyonight-night]]
        end
}
