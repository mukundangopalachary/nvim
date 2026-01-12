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

vim.opt.guifont = "FiraCode Nerd Font:h12"
