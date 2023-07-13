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

