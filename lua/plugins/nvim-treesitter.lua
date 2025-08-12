return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = { "c","cpp","lua","css","javascript", "html","go"},
          sync_install = false,
          highlight = { enable = true,use_languagetree=false},
          indent = { enable = true },
        })
    end
 }
