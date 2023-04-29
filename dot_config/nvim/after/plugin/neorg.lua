require('neorg').setup {
	load = {
		["core.defaults"] = {},
		["core.norg.concealer"] = {},
		["core.norg.dirman"] = {
			config = {
				workspaces = {
					uni = "~/notes/uni",
					general = "~/notes/general",
				}
			}
		}
	}
}
