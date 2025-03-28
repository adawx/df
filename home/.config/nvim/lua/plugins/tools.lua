return {
    { "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",},
	"nvim-treesitter/nvim-treesitter-context",
	"github/copilot.vim",
	"CopilotC-Nvim/CopilotChat.nvim",
    "nvim-lua/popup.nvim",
	"nvim-telescope/telescope.nvim",
	"nvim-telescope/telescope-fzy-native.nvim",
	"sbdchd/neoformat",
    "mhartington/formatter.nvim",
	"nvim-lualine/lualine.nvim",
        {"akinsho/bufferline.nvim",
  version = "v3.*",  
  dependencies = "nvim-tree/nvim-web-devicons", }
}
