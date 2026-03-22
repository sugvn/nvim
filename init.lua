vim.loader.enable(true)
vim.cmd("colorscheme  rose-pine")
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

--indent--
vim.opt.expandtab = true
vim.o.winborder = "none"
vim.o.wrap = true
vim.opt.tabstop = 4
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

---clipboard--

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
map("n", "<leader><leader>", "<CMD>FzfLua files<CR>")

local servers = { "clangd", "lua_ls" }
vim.lsp.config("lua_ls", {
        settings = {
                Lua = {
                        diagnostics = { globals = { 'vim', 'require' } },
                        workspace = { library = vim.api.nvim_get_runtime_file("", true) }
                }
        }
})

vim.pack.add({
        "https://github.com/ibhagwan/fzf-lua",
        "https://github.com/windwp/nvim-autopairs",
        "https://github.com/j-hui/fidget.nvim",
        "https://github.com/kawre/neotab.nvim",
        "https://github.com/neovim/nvim-lspconfig"
})

vim.schedule(function()
        require("nvim-autopairs").setup()
        require("neotab").setup()
        for _, server in ipairs(servers) do
                vim.lsp.enable(server)
        end
end
)

