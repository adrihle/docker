------------------------------------------------
--                                            --
--    This is a main configuration file for    --
--                    Roccocode                  --
--      Change variables which you need to    --
--                                            --
------------------------------------------------

local icons = require("utils.icons")

Roccocode = {
  _VERSION = "beta",
  theme = "tokyonight",
  colorscheme = "tokyonight",
  ui = {
    colors = {
      primary = "#488dff",
      secondary = "#FFA630",
    },
    float = {
      border = "rounded",
    },
  },
  plugins = {
    completion = {
      select_first_on_enter = false,
    },
    experimental_noice = {
      enabled = false,
    },
    rooter = {
      -- Removing package.json from list in Monorepo Frontend Project can be helpful
      -- By that your live_grep will work related to whole project, not specific package
      patterns = { ".git", "package.json", "_darcs", ".bzr", ".svn", "Makefile" }, -- Default
    },
    zen = {
      enabled = true, -- sync after change
    },
    tree = {
      width = 40,
    },
    mason = {
      ensure_installed = {
        "bashls",
        "cssls",
        "eslint",
        "html",
        "jsonls",
        "lua_ls",
        "tsserver",
        "pyright",
        "dockerls",
        "yamlls"
      }
    },
    treesitter = {
      ensure_installed = {
        "tsx",
        "typescript",
        "javascript",
        "html",
        "css",
        "vue",
        "astro",
        "svelte",
        "gitcommit",
        "graphql",
        "json",
        "json5",
        "lua",
        "markdown",
        "prisma",
        "vim",
      },
    }
  },
  icons = icons,
  statusline = {
    path_enabled = false,
    path = "relative", -- absolute/relative
  },
  lsp = {
    virtual_text = true, -- show virtual text (errors, warnings, info) inline messages
  },
  constants = {
    MAPPING = {
      LEADER = " ",
      MODE = {
        NORMAL = { 'n' },
        INSERTION = { 'i' },
        VISUAL_X = { 'x' },
        VISUAL = { 'v' }
      },
      OPTIONS = { silent = true, noremap = true }
    },
  }
}
