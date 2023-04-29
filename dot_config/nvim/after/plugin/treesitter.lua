require 'nvim-treesitter.install'.prefer_git = false
require('nvim-treesitter.configs').setup {
		highlight = {
				enable = true,
				--additional_vim_regex_highlighting = true,
		}
}
