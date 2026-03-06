return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "│",
			highlight = "IBLIndent",
		},
		scope = {
			enabled = true,
			show_start = true,
			show_end = false,
			highlight = "IBLScope",
		},
	},
	config = function(_, opts)
		require("ibl").setup(opts)
		-- palette: surface (#161b30) for indent, muted (#1E3A5F) for active scope
		vim.api.nvim_set_hl(0, "IBLIndent", { fg = "#161b30", nocombine = true })
		vim.api.nvim_set_hl(0, "IBLScope", { fg = "#1E3A5F", nocombine = true })
	end,
}
