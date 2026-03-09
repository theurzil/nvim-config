return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			background = { light = "latte", dark = "mocha" },
			transparent_background = true,

			color_overrides = {
				mocha = {
					-- Backgrounds
					base = "#0B0E1A",
					mantle = "#080C15",
					crust = "#060910",

					-- Surfaces
					surface0 = "#111525",
					surface1 = "#161b30",
					surface2 = "#1E3A5F",

					-- Overlays / inactive
					overlay0 = "#1E3A5F",
					overlay1 = "#2e4e70",
					overlay2 = "#4a6080",

					-- Text
					text = "#D0E0FF",
					subtext1 = "#B0C8EE",
					subtext0 = "#8AAACE",

					-- Palette
					blue = "#448AFF",
					sapphire = "#00D4FF",
					sky = "#4DD0E1",
					teal = "#3FD89A",
					green = "#3FD89A",
					yellow = "#FFD54F",
					peach = "#FF8A80",
					red = "#FF6B6B",
					maroon = "#CC5555",
					mauve = "#B388FF",
					pink = "#D1C4E9",
					flamingo = "#FFE082",
					rosewater = "#E3F2FD",
					lavender = "#64B5F6",
				},
			},

			custom_highlights = function(c)
				return {
					CursorLine = { bg = "#111525" },   -- deep
					CursorLineNr = { fg = c.sapphire, bold = true }, -- cyan, active line

					-- Relative line numbers: dim (#4a6080 = inactive text role)
					LineNr = { fg = "#4a6080" },
					LineNrAbove = { fg = "#4a6080" },
					LineNrBelow = { fg = "#4a6080" },

					-- Comments: dim (inactive text)
					Comment = { fg = "#4a6080", italic = true },

					-- Floats / popups
					NormalFloat = { bg = "#080C15" },
					FloatBorder = { fg = c.sapphire, bg = "#080C15" },

					-- Telescope
					TelescopeBorder = { fg = c.blue },
					TelescopePromptBorder = { fg = c.sapphire },
					TelescopeResultsBorder = { fg = c.teal },
					TelescopePreviewBorder = { fg = c.mauve },

					-- Search
					Search = { fg = "#0B0E1A", bg = c.yellow, bold = true },
					IncSearch = { fg = "#0B0E1A", bg = c.sapphire, bold = true },

					-- Selection: muted (borders/selection role)
					Visual = { bg = "#1E3A5F" },

					-- Sign column: transparent to respect blur
					SignColumn = { bg = "NONE" },
				}
			end,

			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				functions = { "bold" },
				keywords = {},
				strings = {},
				variables = {},
				types = { "bold" },
			},

			integrations = {
				cmp = true,
				gitsigns = true,
				neo_tree = true,
				telescope = { enabled = true },
				treesitter = true,
				mini = { enabled = true },
				which_key = false,
				notify = false,
				lsp_trouble = false,
				indent_blankline = {
					enabled = true,
					scope_color = "sapphire",
				},
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}
