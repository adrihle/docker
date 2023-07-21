local MAPPER = require('utils.functions.mapping')

local CATEGORY = 'Git'

local function getid(id)
  return 'git' .. id
end

local function getkeybind(key)
  return '<leader>g' .. key
end

local git_blame = require('git.blame')
local git_browse = require('git.browse')

MAPPER.Map({
  keybind = getkeybind('b'),
  command = git_blame.blame(),
  category = CATEGORY,
  id = getid('blame'),
  description = 'Open a panel with the git blames'
})

MAPPER.Map({
  keybind = getkeybind('o'),
  command = git_browse.open(true),
  category = CATEGORY,
  id = getid('grep-file'),
  description = 'Grep text through commited files'
})

MAPPER.Map({
  keybind = getkeybind('p'),
  command = git_browse.pull_request(),
  category = CATEGORY,
  id = getid('grep-string'),
  description = 'Grep string through commited files'
})

MAPPER.Map({
  keybind = getkeybind('n'),
  command = git_browse.create_pull_request(),
  category = CATEGORY,
  id = getid('find_buffers'),
  description = 'Find active buffers'
})


