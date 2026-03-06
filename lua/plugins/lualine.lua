return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local c = {
			void = "#0B0E1A",
			deep = "#111525",
			surface = "#161b30",
			muted = "#1E3A5F",
			dim = "#4a6080",
			text = "#D0E0FF",
			subtext = "#8AAACE",
			cyan = "#00D4FF",
			teal = "#4DD0E1",
			blue = "#448AFF",
			purple = "#B388FF",
			green = "#3FD89A",
			yellow = "#FFD54F",
			red = "#FF6B6B",
		}

		local theme = {
			normal = {
				a = { fg = c.void, bg = c.cyan, gui = "bold" },
				b = { fg = c.text, bg = c.surface },
				c = { fg = c.subtext, bg = "NONE" },
				x = { fg = c.dim, bg = "NONE" },
				y = { fg = c.text, bg = c.surface },
				z = { fg = c.void, bg = c.teal, gui = "bold" },
			},
			insert = {
				a = { fg = c.void, bg = c.green, gui = "bold" },
				b = { fg = c.text, bg = c.surface },
			},
			visual = {
				a = { fg = c.void, bg = c.purple, gui = "bold" },
				b = { fg = c.text, bg = c.surface },
			},
			replace = {
				a = { fg = c.void, bg = c.red, gui = "bold" },
				b = { fg = c.text, bg = c.surface },
			},
			command = {
				a = { fg = c.void, bg = c.yellow, gui = "bold" },
				b = { fg = c.text, bg = c.surface },
			},
			inactive = {
				a = { fg = c.dim, bg = c.deep },
				b = { fg = c.dim, bg = c.deep },
				c = { fg = c.dim, bg = "NONE" },
			},
		}

		require("lualine").setup({
			options = {
				theme = theme,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "location" },
			},
		})
	end,
}
