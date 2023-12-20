return {
    { 'dracula/vim', name = 'dracula' },
    "rebelot/kanagawa.nvim",
    "ellisonleao/gruvbox.nvim",
    "neovim/nvim-lspconfig",
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "nvim-lua/plenary.nvim",
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    "ThePrimeagen/vim-be-good",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    ({
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({

            })
        end
    }),
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
            }
        end,
    },
    "theprimeagen/harpoon",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
        {
            "windwp/nvim-autopairs",
            event = "InsertEnter",
            opts = {}
        },

    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip",
    "kmonad/kmonad-vim",
    "simrat39/rust-tools.nvim",
    {
        "folke/noice.nvim",
        events = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }
}
