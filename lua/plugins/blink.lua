return {
  'saghen/blink.cmp',
    event="InsertEnter",
  -- optional: provides snippets for the snippet source
   dependencies = { 'rafamadriz/friendly-snippets' },

  -- use a release tag to download pre-built binaries
  version = '1.*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  -- build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = { preset = 'enter',
            ['<Tab>']={'select_next','fallback'},
            ['<S-Tab>']={'select_prev','fallback'},
        },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

      cmdline = { enabled = false },
    -- (Default) Only show the documentation popup when manually triggered
    completion = {
        -- documentation = { auto_show = false },
    documentation = { auto_show = true, auto_show_delay_ms = 1000 },
        keyword = { range = 'full' },
        list = { selection = { auto_insert = false } },
        menu={
        --        border="rounded",
                draw = {
                    columns = {
                      { "kind_icon" },
                      { "label", gap = 1 },
                        {"kind"}
                    },
                }
            },
        ghost_text={enabled=true},
        },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'snippets','path', 'buffer' },   --removed snippets
        providers = {
                    snippets = {
                        -- min_keyword_length = 2,
                        score_offset = 6,
                    },
                    lsp = {
                        -- min_keyword_length = 0,
                        score_offset = 10,
                    },
                    path = {
                        -- min_keyword_length = 3,
                        score_offset = 2,
                    },
                    buffer = {
                        -- min_keyword_length = 5,
                        score_offset = 1,
                    },
                },
    },
    signature={enabled=true},

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning",
        sorts={
            'exact',
            -- defaults
            'score',
            'sort_text',
            }
        }
  },
  opts_extend = { "sources.default" }
}
