local DEFAULT_CATEGORY = 'Undefined'
local DEFAULT_DESCRIPTION = 'Pending to define'

Mapper = require('nvim-mapper')

local function cloneTable(table)
  local table2 = {}
  for k, v in pairs(table) do table2[k] = v end
  return table2
end

local function getMapOptions(desc, id)
  local descTable = { desc = desc or id }
  local table = cloneTable(Roccocode.constants.MAPPING.OPTIONS)
  for k, v in pairs(descTable) do table[k] = v end
  return table
end

local function injectMapConfig(mapper, config)
  mapper(
    config.mode or Roccocode.constants.MAPPING.MODE.NORMAL,
    config.keybind,
    config.command,
    config.options or getMapOptions(config.menu, config.id),
    config.category or DEFAULT_CATEGORY,
    config.id,
    config.description or DEFAULT_DESCRIPTION
  )
end

function Map(config)
  injectMapConfig(Mapper.map, config)
end

function BufferMap(config)
  injectMapConfig(Mapper.map_buf, config)
end

function VirtualMap(config)
  injectMapConfig(Mapper.map_virtual, config)
end

local CATEGORY = 'Remap'

local function getid(id)
  return 'remap-' .. id
end

Map({
  keybind = '<C-h>',
  command = '<C-w>h',
  id = getid('left_move'),
  category = CATEGORY,
  description = 'Move left between buffers in screen'
})

Map({
  keybind = '<C-j>',
  command = '<C-w>j',
  id = getid('down-move'),
  category = CATEGORY,
  description = 'Move down between buffers in screen'
})

Map({
  keybind = '<C-k>',
  command = '<C-w>k',
  id = getid('up-move'),
  category = CATEGORY,
  description = 'Move up between buffers in screen'
})

Map({
  keybind = '<C-l>',
  command = '<C-w>l',
  id = getid('right-move'),
  category = CATEGORY,
  description = 'Move right between buffers in screen'
})

require('plugins.telescope.keymap')
require('plugins.mapper.keymap')
require('plugins.tree.keymap')
