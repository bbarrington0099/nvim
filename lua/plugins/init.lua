print("loading lazy plugins...")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    lazy = false,
    config = function()
        vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
  	"nvim-tree/nvim-tree.lua",
  	lazy = false,
  	dependencies = {
    		"nvim-tree/nvim-web-devicons",
  	},	
  },
  {
    "ThePrimeagen/vim-be-good"
  },
  {
    "m4xshen/autoclose.nvim",
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
    		"nvim-tree/nvim-web-devicons",
  	},	
  },
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
      "mason-org/mason.nvim",
      version = "^1.0.0",
  },
  {
      "mason-org/mason-lspconfig.nvim",
      version = "^1.0.0",
  },
  {
      "neovim/nvim-lspconfig",
      version = "0.1.7",
      event = {"BufReadPre", "BufNewFile"},
      dependencies = {
          "hrsh7th/cmp-nvim-lsp",
          { "antosha417/nvim-lsp-file-operations", config = true },
      }
  },
}   