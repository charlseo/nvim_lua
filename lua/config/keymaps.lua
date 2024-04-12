local mapKey = require("utils.KeyMapper").mapKey
local inoreMapper = require("utils.KeyMapper").inoreKey

-- neotree toggle
mapKey('<leader>e', ':Neotree toggle<cr>')


-- pane navigation
mapKey('<C-h>', '<C-w>h') -- left
mapKey('<C-j>', '<C-w>j') -- down
mapKey('<C-k>', '<C-w>k') -- up
mapKey('<C-l>', '<C-w>l') -- right


-- clear search hl
mapKey('<leader>nh', ':nohlsearch<cr>')


-- indent
mapKey('<', '<gv', 'v')
mapKey('>', '>gv', 'v')


-- split
mapKey('<leader>v', '<cmd>vsplit<cr>')
mapKey('<leader>h', '<cmd>split<cr>')

-- resize
mapKey('<leader>+', '<cmd>vertical resize +5<cr>')
mapKey('<leader>-', '<cmd>vertical resize -5<cr>')
mapKey('<leader>u', '<cmd>resize +5<cr>')
mapKey('<leader>d', '<cmd>resize -5<cr>')

-- markdown preview
mapKey('<leader>md', '<cmd>MarkdownPreview<cr>')
mapKey('<leader>ms', '<cmd>MarkdownPreviewStop<cr>')

-- auto completion
inoreMapper('(', '()<Left>')
inoreMapper('[', '[]<Left>')
inoreMapper('{', '{}<Left>')
inoreMapper('"', '""<Left>')
inoreMapper("'", "''<Left>")

-- jenkinsfile-linter
mapKey('<leader>jl', '<cmd>lua require("jenkinsfile_linter").validate()<cr>')

-- toggleterm
mapKey('<leader>t', '<cmd>ToggleTerm direction=float<cr>')
