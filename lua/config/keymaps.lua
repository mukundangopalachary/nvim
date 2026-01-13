vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("syntax enable")
vim.cmd("set smartindent")
vim.cmd("set number relativenumber")
vim.cmd("set laststatus=2")
vim.cmd("set wrap")
vim.cmd("set encoding=utf-8")
vim.cmd("nnoremap ,, :let @/ = ''<CR>:nohlsearch<CR>")

vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy UI" })

vim.opt.guifont = "FiraCode Nerd Font:h12"
vim.opt.clipboard = "unnamedplus"

-- for moving between windowf
vim.keymap.set("n", "<leader>h", "<C-w>h", { silent = true })
vim.keymap.set("n", "<leader>j", "<C-w>j", { silent = true })
vim.keymap.set("n", "<leader>k", "<C-w>k", { silent = true })
vim.keymap.set("n", "<leader>l", "<C-w>l", { silent = true })
