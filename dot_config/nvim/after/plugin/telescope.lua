if not vim.g.vscode then
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>F', builtin.find_files, {})
end