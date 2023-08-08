local keymap = vim.keymap.set
local silent = { silent = true }

vim.g.mapleader = Roccocode.constants.MAPPING.LEADER
keymap("n", "<CR>", ":noh<CR><CR>", silent)

require('keybinds.window')
require('keybinds.buffers')
require('keybinds.tabs')
require('plugins.keymap')
