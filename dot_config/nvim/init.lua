-- nvim rc thingoyyo

-- Lazy installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
          "git",
          "clone",
          "--filter=blob:none",
          "https://github.com/folke/lazy.nvim.git",
          "--branch=stable", -- latest stable release
          lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

--require "pluginsOld"

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
vim.keymap.set('i', '<C-BS>', '<C-W>')

-- cp
vim.keymap.set('n', '<leader><leader>m', ":!g++ --std=c++23 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror -o '%<' '%' && './%<' < input<CR>")

vim.g.vimwiki_list = { { path = '~/doc/vimwiki/' } }

require("lazy").setup("plugins")
vim.cmd('colorscheme gruvbox')
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
