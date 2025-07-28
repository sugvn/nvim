return {
  "vague2k/vague.nvim",
    enabled=true,
    lazy=false,
    priority=1000,
    config=function ()
        vim.cmd[[colorscheme vague]]
        vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
        vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#000000" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "#000000" })
        vim.api.nvim_set_hl(0, "VertSplit", { bg = "#000000" })
    end
}
