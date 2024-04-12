local keyMapper = function(from, to, mode, opts)
	local options = { noremap = true, silent = true}
	mode = mode or "n"

	if opts then
    options = vim.tbl_extend("force", options, opts)
	end

	vim.keymap.set(mode, from, to, options)
end 

local inoreMapper = function(key, action)
  vim.api.nvim_set_keymap('i', key, action, {noremap = true})
end

return { mapKey = keyMapper, inoreKey = inoreMapper }
