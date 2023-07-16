local CATEGORY = 'Mapper'

local function getid(id)
  return 'mapper-' .. id
end

Map({
  keybind = '<leader>fm',
  command = "<CMD>:Telescope mapper<CR>",
  category = CATEGORY,
  id = getid('find_keybinds'),
  description = 'Find and grep keymaps'
})


