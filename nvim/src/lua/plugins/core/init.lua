local TABLES    = require('utils.functions.tables')

local AUTOPAIRS = require('plugins.core.autopairs')

local CORE      = {
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({ default = true })
    end,
  },
  { "windwp/nvim-ts-autotag", after = "nvim-treesitter" },
  {
    "numToStr/Comment.nvim",
    config = function()
      require('Comment').setup()
    end
  },
  { "tpope/vim-surround" },
}

return TABLES.table_merge(
  CORE,
  AUTOPAIRS
)
