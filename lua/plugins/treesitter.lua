return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"go",
				"c",
				"lua",
				"vim",
				"vimdoc",
				"vue",
				"css",
				"scss",
				"typescript",
				"tsx",
				"bash",
				"javascript",
				"html",
				"json",
				"json5",
				"yaml",
				"toml",
				"sql",
				"markdown",
				"markdown_inline",
				"graphql",
				"dockerfile",
				"gitignore",
				"regex",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
