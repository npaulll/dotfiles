require('neorg').setup {
	load = {
		["core.defaults"] = {},
		["core.concealer"] = {},
		["core.dirman"] = {
			config = {
				workspaces = {
					uni = "~/notes/uni",
					general = "~/notes/general",
				}
			}
		}
	}
}
