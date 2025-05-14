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
    config = function()
        require("plugins.catppuccin")
        vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
  	"nvim-tree/nvim-tree.lua",
	version = "*",
  	lazy = false,
  	dependencies = {
    		"nvim-tree/nvim-web-devicons",
  	},	
  },
  {
    "ThePrimeagen/vim-be-good"
  },
}
