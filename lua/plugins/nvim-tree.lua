return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
    cmd={"NvimTreeToggle"},
    event="User FilePost",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
        renderer = {
            root_folder_label = false,  -- this hides the top path
          },
    }
  end,
}
