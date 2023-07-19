local TABLES = require('utils.functions.tables')

local MASON = require('plugins.protocol.mason')
local LSP = require('plugins.protocol.lsp')
local CMP = require('plugins.protocol.cmp')

return TABLES.table_merge(
  LSP,
  MASON,
  CMP
)
