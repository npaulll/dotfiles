-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- You can alias plugin names
    use { 'dracula/vim', as = 'dracula' }
    use "ellisonleao/gruvbox.nvim"
    use "neovim/nvim-lspconfig"
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "nvim-lua/plenary.nvim"
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use "ThePrimeagen/vim-be-good"
    use "nvim-tree/nvim-tree.lua"
    use "nvim-tree/nvim-web-devicons"
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({

            })
        end
    })
    use {
        "nvim-neorg/neorg",
        config = function()
            require('neorg').setup {

            }
        end,
        requires = "nvim-lua/plenary.nvim"
    }
    use "theprimeagen/harpoon"
    use "mbbill/undotree"
    use "tpope/vim-fugitive"
    use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-nvim-lsp"
    use "saadparwaiz1/cmp_luasnip"
    use "kmonad/kmonad-vim"
    use "simrat39/rust-tools.nvim"
end)
