return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.install").compilers = { "gcc", "cc" }

		-- v1 API: setup only accepts install_dir override
		require("nvim-treesitter").setup()

		-- highlight and indent now use vim.treesitter (built into nvim 0.10+)
		-- nvim-treesitter v1 auto-registers parsers; enable highlight globally
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				local ok = pcall(vim.treesitter.start)
				if not ok then
					-- parser not available for this filetype, ignore
				end
			end,
		})

		local languages = {
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
		}

		require("nvim-treesitter").install(languages)
	end,
}
