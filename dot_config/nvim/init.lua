-- nvim rc thingoyyo
require 'plugins'
vim.cmd('colorscheme gruvbox')
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.smartindent = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.o.hlsearch = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 4

-- keybinds
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.keymap.set('v', 'J', ":m '>+1<CR>gv-gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv-gv")
vim.keymap.set('n', 'J', "mzJ`z")
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-u>zz")
vim.keymap.set('n', 'n', "nzzzv")
vim.keymap.set('n', 'N', "Nzzzv")
vim.keymap.set('n', 'Q', "<nop>")

-- cp
vim.keymap.set('n', '<leader><leader>m', ":!g++ --std=c++23 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror -o '%<' '%' && './%<' < input<CR>")

vim.g.vimwiki_list = { { path = '~/doc/vimwiki/' } }

vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
