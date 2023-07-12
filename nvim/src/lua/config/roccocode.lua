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
		ai = {
			chatgpt = {
				enabled = false,
			},
			codeium = {
				enabled = false,
			},
			copilot = {
				enabled = false,
			},
			tabnine = {
				enabled = false,
			},
		},
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
			kitty_enabled = true,
			enabled = true, -- sync after change
		},
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
