vim.cmd("colorscheme  rose-pine")
vim.g.mapleader = " "
vim.opt.syntax = "on"

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
vim.opt.clipboard = "unnamedplus"

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

local function mapping()
	local map = vim.keymap.set
	vim.api.nvim_create_user_command("Q", "q!", {})

	--general--
	map("n", ";", ":")
	map({ "v", "n" }, "vv", "V", { noremap = true, silent = true })

	map("n", "<leader>rn", function()
		vim.opt.relativenumber = not vim.opt.relativenumber:get()
		vim.opt.number = vim.opt.relativenumber:get()
	end, { desc = "Toggle relative number" })

	map("n", "<leader>n", function()
		vim.opt.relativenumber = false
		vim.opt.number = not vim.opt.number:get()
	end, { desc = "Toggle number" })

	map("n", "gll", vim.diagnostic.open_float)

	--formatting--
	map("n", "<leader>fm", function()
		vim.lsp.buf.format()
	end, { desc = "Format with LSP" })

	map("n", "<C-h>", "<C-w>h")
	map("n", "<C-j>", "<C-w>j")
	map("n", "<C-k>", "<C-w>k")
	map("n", "<C-l>", "<C-w>l")

	map("n", "<leader>i", "<CMD>Inspect<CR>")

	map("n", "<A-v>", ":split<CR>", { noremap = true, silent = true })
	map("n", "<A-b>", ":vsplit<CR>", { noremap = true, silent = true })
end

vim.schedule(function()
  mapping()
end)
