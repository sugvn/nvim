vim.loader.enable(true)
vim.cmd("colorscheme  rose-pine")
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.o.syntax = "off"
vim.g.loaded_netrwPlugin = 1

--indent--
vim.opt.expandtab = true
vim.o.winborder = "single"
vim.o.wrap = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.termguicolors = true

--file--
vim.opt.undofile = true

--buffer--
vim.opt.splitright = true
vim.opt.splitbelow = true

--line number--
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = false
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"

--cmd line--
vim.opt.cmdheight = 1
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.api.nvim_create_user_command("Q", "q!", {})
local map = vim.keymap.set
map("n", ";", ":")
map({ "v", "n" }, "vv", "V", { noremap = true, silent = true })
map("n", "<leader>rn", "<CMD>se rnu!<CR>")
map("n", "<leader>n", "<CMD>se nu!<CR>")
map("n", "gll", vim.diagnostic.open_float)
map("n", "<leader>fm", vim.lsp.buf.format)
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<leader>i", "<CMD>Inspect<CR>")
map("n", "<A-v>", ":split<CR>", { noremap = true, silent = true })
map("n", "<A-b>", ":vsplit<CR>", { noremap = true, silent = true })
map("n","<Tab>",":bnext<CR>",{silent = true})
map("n", "<leader>ff",":FzfLua files<CR>")
map("n", "<leader><space>",":FzfLua files cwd=~/<CR>")
map("n", "<leader>gp",":FzfLua live_grep_native<CR>")
map("n","gd",":FzfLua diagnostics_document<CR>")
map("n","<leader>gd",":FzfLua git_diff<CR>")
map("n","<leader>o",":Oil --float<CR>")

local servers = { "clangd", "lua_ls" }
vim.lsp.config("lua_ls", {
        settings = {
                Lua = {
                        diagnostics = { globals = { 'vim', 'require' } },
                        workspace = { library = vim.api.nvim_get_runtime_file("", true) }
                }
        }
})

local treesitters = {'cpp', 'lua'}
vim.api.nvim_create_autocmd('FileType', {
  pattern = treesitters,
  callback = function() vim.treesitter.start() end,
})

vim.pack.add({
        "https://github.com/nvim-treesitter/nvim-treesitter",
        "https://github.com/stevearc/oil.nvim",
        "https://github.com/ibhagwan/fzf-lua",
        "https://github.com/windwp/nvim-autopairs",
        "https://github.com/j-hui/fidget.nvim",
        "https://github.com/kawre/neotab.nvim",
        "https://github.com/neovim/nvim-lspconfig",
        { src = "https://github.com/saghen/blink.cmp", version = vim.version.range('*') }
})

vim.schedule(function()
        for _, server in ipairs(servers) do
                vim.lsp.enable(server)
        end
        require("oil").setup()
        require("nvim-autopairs").setup()
        require("neotab").setup({})
        require("fidget").setup({})
        require("blink.cmp").setup({ completion = { menu = { auto_show = true }, ghost_text = { enabled = false } } })
        require("nvim-treesitter").install(treesitters)
end
)
