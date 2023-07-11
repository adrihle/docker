local CATEGORY = 'Telescope'

local function getid(id)
  return 'telescope-' .. id
end

Map({
  keybind = '<leader>fm',
  command = "<CMD>:Telescope mapper<CR>",
  category = CATEGORY,
  id = getid('mapper'),
  description = 'Find and grep keymaps'
})

