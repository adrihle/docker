local tables = require('utils.functions.tables')

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

local MENU        = require('plugins.alpha')
local TELESCOPE   = require('plugins.telescope')
local THEME       = require('plugins.theme')
local FILE_TREE   = require('plugins.tree')
local STATUS_LINE = require('plugins.lualine')

local BASIC       = {
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({ default = true })
    end,
  },
}

local PLUGINS     = tables.table_merge(BASIC, MENU, TELESCOPE, THEME, FILE_TREE, STATUS_LINE)

require("lazy").setup({PLUGINS}, {
  defaults = { lazy = true },
  install = { colorscheme = { "tokyonight" } },
  checker = { enabled = true },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
  debug = false,
  ui = {
    border = Roccocode.ui.float.border,
  }
})
