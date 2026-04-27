return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,

				-- Go
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,

				-- JS/TS/Vue/CSS/HTML/JSON/YAML/MD (prettier handles all)
				null_ls.builtins.formatting.prettier.with({
					extra_filetypes = { "vue", "markdown", "yaml", "toml" },
					extra_args = { "--tab-width=2", "--single-quote" },
				}),

				-- SQL
				null_ls.builtins.formatting.sqlfmt,

				-- Shell
				null_ls.builtins.formatting.shfmt.with({
					extra_args = { "-i", "2" },
				}),

				-- CSS/SCSS linting
				null_ls.builtins.diagnostics.stylelint.with({
					filetypes = { "css", "scss", "less", "vue" },
				}),

				-- Markdown linting
				null_ls.builtins.diagnostics.markdownlint.with({
					extra_args = { "--disable", "MD013" }, -- disable line-length rule
				}),

				-- ESLint: handled by eslint LSP server (in lsp-config.lua)
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
