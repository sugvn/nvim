
local map = vim.keymap.set

--general--
map('n',';',':')
map("n", "vv", "V", { noremap = true, silent = true })
vim.api.nvim_create_user_command('Q', 'q!', {})

map("n", "<leader>rn", function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
  vim.opt.number = vim.opt.relativenumber:get()
end, { desc = "Toggle relative number" })

map("n", "<leader>n", function()
  vim.opt.relativenumber=false
  vim.opt.number = not vim.opt.number:get()
end, { desc = "Toggle number" })

map('n','gll',vim.diagnostic.open_float)

--formatting--
vim.keymap.set("n", "<leader>fm", function()
  vim.lsp.buf.format()
end, { desc = "Format with LSP" })


--bufferline
map('n', '<Tab>', '<Cmd>bnext<CR>', { desc = 'Next buffer' })
map('n', '<S-Tab>', '<Cmd>bprevious<CR>', { desc = 'Previous buffer' })
for i = 1, 9 do
  map('n', '<leader>'..i, '<cmd>BufferLineGoToBuffer '..i..'<cr>')
end
map('n', '<leader>0', '<cmd>BufferLineGoToBuffer 10<cr>')

--oil
map('n','\\',"<CMD>Oil --float<CR>",{})
map('n','<leader>o',"<CMD>Oil --float<CR>",{})

--Nvim tree
map('n','<C-n>',"<CMD>NvimTreeToggle<CR>",{})
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n','<leader>i',"<CMD>Inspect<CR>")

map('n', '<A-v>', ':split<CR>', { noremap = true, silent = true })
map('n', '<A-b>', ':vsplit<CR>', { noremap = true, silent = true })
