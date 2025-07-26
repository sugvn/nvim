return {
    "nvim-treesitter/nvim-treesitter",
   --- event="VeryLazy",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = { "c","cpp","lua","css","javascript", "html","go"},
          sync_install = false,
          highlight = { enable = true,use_languagetree=true},
          indent = { enable = true },
        })
    end
 }
