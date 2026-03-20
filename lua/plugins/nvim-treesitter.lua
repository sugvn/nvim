return {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    event={"BufReadPost","BufNewFile"},
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter').install({
            'c', 'lua', 'vim', 'vimdoc','html'
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'c','html', 'lua',"cpp"},
            callback = function() vim.treesitter.start() end,
        })
    end
}
