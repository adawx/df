return {
  -- Fuzzy finder (requires fzf binary)
{
  "kyazdani42/nvim-web-devicons",
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {}
},
  "townk/vim-autoclose",
  "tpope/vim-repeat",
  "tpope/vim-surround",
  -- File tree explorer
  {
    "kyazdani42/nvim-tree.lua",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({})
    end,
  },
  "ryanoasis/vim-devicons",
  "rbgrouleff/bclose.vim",
  "vim-scripts/BufOnly.vim",
  "nvim-lua/plenary.nvim",
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && yarn install",
    ft = "markdown", -- Only loads for markdown files
  },
  "mbbill/undotree",
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "f-person/git-blame.nvim",
    config = function()
      require("gitblame").setup()
    end,
  },
 "hrsh7th/vim-vsnip",
 "hrsh7th/vim-vsnip-integ",

  -- colour scheme
  {
    "pineapplegiant/spaceduck",
    branch = "main",
    lazy = false, -- Load immediately (not lazy-loaded)
    priority = 1000, -- High priority to ensure it loads first
    config = function()
      vim.cmd("colorscheme spaceduck") -- Set the colorscheme
    end,
  },
}
