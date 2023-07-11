return {
  -- Themes
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
      require("config.colorscheme")
    end,
  },
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({ default = true })
    end,
  },
  -- Telescope
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('plugins.telescope')
    end,
  },

  -- Mapper
  {
    "gregorias/nvim-mapper",
    lazy = false,
    dependencies = "nvim-telescope/telescope.nvim",
    config = function() require('plugins.mapper') end
  },
}

