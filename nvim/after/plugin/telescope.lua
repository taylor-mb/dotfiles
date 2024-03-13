local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<c-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("grep > ") });
end)

-- use telescope for looking up tags with "gt"
-- from https://dev.to/oinak/neovim-config-from-scratch-part-ii-11k9
vim.keymap.set('n', 'gt', builtin.tags, { desc = '[g]o to c[t]ags (telescope)', noremap = true })
