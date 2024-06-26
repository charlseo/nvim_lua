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

-- obsidian
mapKey('<leader>on', '<cmd>ObsidianNew<cr>')
mapKey('<leader>ot', '<cmd>ObsidianTemplate<cr>')

-- nvim-ufo
--
-- za : toggle folding on and off
-- zM : close all
-- zR : open all
--
--
-- wrapping
-- [ow (soft wrap mode)
-- ]ow (hard wrap mode)
-- yow (toggle wrap mode)
-- HardWrapMode
-- SoftWrapMode
-- ToggleWrapMode
--
--
-- comment
-- gcc
-- `gcc` - Toggles the current line using linewise comment
--`gbc` - Toggles the current line using blockwise comment
--`[count]gcc` - Toggles the number of line given as a prefix-count using linewise
--`[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
--`gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
--`gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
