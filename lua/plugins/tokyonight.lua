return {
        "folke/tokyonight.nvim",
        enabled = true,
        lazy = false,
        priority = 1000,
        config = function()
                require("tokyonight").setup(
                        {
                                style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
                                light_style = "day", -- The theme is used when the background is set to light
                                transparent = false, -- Enable this to disable setting the background color
                                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                                styles = {
                                        comments = { italic = true },
                                        keywords = { italic = false },
                                        functions = {},
                                        variables = {},
                                        sidebars = "transparent", -- style for sidebars, see below
                                        floats = "transparent", -- style for floating windows
                                },
                                day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
                                dim_inactive = false, -- dims inactive windows
                                lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

                                cache = true, -- When set to true, the theme will be cached for better performance

                                plugins = {
                                        -- enable all plugins when not using lazy.nvim
                                        -- set to false to manually enable/disable plugins
                                        all = package.loaded.lazy == nil,
                                        -- uses your plugin manager to automatically enable needed plugins
                                        -- currently only lazy.nvim is supported
                                        auto = true,
                                        -- add any plugins here that you want to enable
                                        -- for all possible plugins, see:
                                        --   * https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/groups
                                        -- telescope = true,
                                },
                        }
                )
                vim.cmd [[colorscheme tokyonight]]
        end
}
