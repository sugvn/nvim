-- lua/plugins/rose-pine.lua
return {
	"rose-pine/neovim",
	name = "rose-pine",
    enabled=false,
    lazy=false,
	config = function()
        require("rose-pine").setup({
                styles={
                        bold=false,
                        italic=false,
                        transparency=true
                },
                groups = {
                    border      = "muted",
                    link        = "iris",
                    panel       = "surface",
          
                    error       = "love",
                    hint        = "iris",
                    info        = "foam",
                    warn        = "gold",
                    todo        = "rose",
                    note        = "pine",
          
                    git_add     = "foam",
                    git_change  = "rose",
                    git_delete  = "love",
                    git_dirty   = "rose",
                    git_ignore  = "muted",
                    git_merge   = "iris",
                    git_rename  = "pine",
                    git_stage   = "iris",
                    git_text    = "rose",
                    git_untracked = "subtle",
          
                    h1 = "iris",
                    h2 = "foam",
                    h3 = "rose",
                    h4 = "gold",
                    h5 = "pine",
                    h6 = "foam",
                },
            highlight_groups = {
        
                -- SYNTAX
                ["@attribute"]                      = { fg = "rose" },
                ["@character"]                      = { fg = "love" },
                ["@comment"]                        = { fg = "subtle" },        -- nvchad uses grey_fg (#474552), subtle is closest
                ["@constant"]                       = { fg = "gold" },
                ["@constant.builtin"]               = { fg = "gold" },
                ["@constant.macro"]                 = { fg = "love" },
                ["@constructor"]                    = { fg = "foam" },
                ["@function"]                       = { fg = "iris" },
                ["@function.builtin"]               = { fg = "iris" },
                ["@function.call"]                  = { fg = "iris" },
                ["@function.macro"]                 = { fg = "love" },
                ["@function.method"]                = { fg = "iris" },
                ["@function.method.call"]           = { fg = "iris" },
                ["@keyword"]                        = { fg = "gold" },
                ["@keyword.import"]                 = { fg = "iris" },
                ["@keyword.conditional"]            = { fg = "gold" },
                ["@keyword.conditional.ternary"]    = { fg = "gold" },
                ["@keyword.directive"]              = { fg = "rose" },
                ["@keyword.directive.define"]       = { fg = "gold" },
                ["@keyword.exception"]              = { fg = "love" },
                ["@keyword.function"]               = { fg = "gold" },
                ["@keyword.operator"]               = { fg = "gold" },
                ["@keyword.repeat"]                 = { fg = "rose" },
                ["@keyword.return"]                 = { fg = "gold" },
                ["@markup.heading"]                 = { fg = "iris" },
                ["@markup.link"]                    = { fg = "love" },
                ["@markup.link.label"]              = { fg = "foam" },
                ["@markup.link.url"]                = { fg = "gold", underline = true },
                ["@markup.list"]                    = { fg = "love" },
                ["@markup.raw"]                     = { fg = "gold" },
                ["@module"]                         = { fg = "love" },
                ["@number"]                         = { fg = "gold" },
                ["@number.float"]                   = { fg = "gold" },
                ["@operator"]                       = { fg = "text" },
                ["@property"]                       = { fg = "love" },
                ["@punctuation.bracket"]            = { fg = "subtle" },        -- nvchad uses base07 (#524f67), subtle is closest
                ["@punctuation.delimiter"]          = { fg = "subtle" },
                ["@string"]                         = { fg = "pine" },
                ["@string.escape"]                  = { fg = "foam" },
                ["@string.special.symbol"]          = { fg = "pine" },
                ["@tag"]                            = { fg = "rose" },
                ["@tag.attribute"]                  = { fg = "love" },
                ["@tag.delimiter"]                  = { fg = "subtle" },
                ["@type.builtin"]                   = { fg = "rose" },
                ["@variable"]                       = { fg = "text" },
                ["@variable.builtin"]               = { fg = "gold" },
                ["@variable.member"]                = { fg = "love" },
                ["@variable.parameter"]             = { fg = "love" },
                ["@type"]               = { fg = "rose" },   -- Animal, custom types → copper
                -- ["@type.builtin"]       = { fg = "rose" },   -- string, int → copper (already set but check it's loading)
                ["@keyword.modifier"]   = { fg = "gold" },   -- virtual, private, public, static → yellow
                ["@keyword.type"]       = { fg = "gold" },   -- class, struct, enum → yellow
                ["@namespace"]          = { fg = "love" },   -- std → red (maps to @module in newer TS)
        
                -- LEGACY SYNTAX GROUPS
                Boolean         = { fg = "gold" },
                Comment         = { fg = "muted" },
                Conditional     = { fg = "gold" },
                Constant        = { fg = "gold" },
                Function        = { fg = "iris" },
                Identifier      = { fg = "love" },
                Include         = { fg = "iris" },
                Keyword         = { fg = "gold" },
                Label           = { fg = "rose" },
                Number          = { fg = "gold" },
                Operator        = { fg = "text" },
                Special         = { fg = "foam" },
                Statement       = { fg = "love" },
                StorageClass    = { fg = "rose" },
                String          = { fg = "pine" },
                Tag             = { fg = "rose" },
                Title           = { fg = "iris" },
                Type            = { fg = "rose" },
                Typedef         = { fg = "rose" },
        
                -- UI
                LineNr          = { fg = "muted" },
                CursorLineNr    = { fg = "text" },
                Directory       = { fg = "iris" },
        
                -- DIAGNOSTICS
                DiagnosticError = { fg = "love" },
                DiagnosticHint  = { fg = "iris" },
                DiagnosticWarn  = { fg = "gold" },
                -- DiagnosticInfo uses nvchad green (#abe9b3) which is outside rosepine palette
                -- override with hex directly:
                DiagnosticInfo  = { fg = "#abe9b3" },
                Define       = { fg = "gold" },
                Delimiter    = { fg = "subtle" },
                Float        = { fg = "gold" },
                Variable     = { fg = "text" },
                PreProc      = { fg = "rose" },
                Repeat       = { fg = "rose" },
                SpecialChar  = { fg = "subtle" },
                Structure    = { fg = "gold" },
                Todo         = { fg = "rose", bg = "surface" },
            },
        })
		vim.cmd("colorscheme rose-pine")
	end
}
