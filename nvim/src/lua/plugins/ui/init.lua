local TABLES = require('utils.functions.tables')

local ALPHA = require('plugins.ui.alpha')
local TREE = require('plugins.ui.tree')
local STATUS_LINE = require('plugins.ui.lualine')
local THEME = require('plugins.ui.theme')

return TABLES.table_merge(
  ALPHA,
  THEME,
  TREE,
  STATUS_LINE
)
