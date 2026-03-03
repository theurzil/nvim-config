return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			background = { light = "latte", dark = "mocha" },
			transparent_background = true,

			-- Override Mocha's default colors with your Serendipity/Cyberpunk palette
			color_overrides = {
				mocha = {
					-- Backgrounds
					base = "#0B0E1A", -- your deep midnight navy
					mantle = "#080C15",
					crust = "#060910",

					-- Surfaces (UI elements, popups, selections)
					surface0 = "#0F1A2E",
					surface1 = "#152238",
					surface2 = "#1A2A44", -- your selection color

					-- Overlays (comments, borders)
					overlay0 = "#2A3F5F",
					overlay1 = "#3A5070",
					overlay2 = "#4A6080",

					-- Text
					text = "#D0E0FF", -- your soft cool white-blue
					subtext1 = "#B0C8EE",
					subtext0 = "#90A8CE",

					-- Accent colors mapped to your cyberpunk palette
					blue = "#448AFF", -- deep blue-cyan (keywords)
					sapphire = "#00D4FF", -- your neon cyan (cursor color)
					sky = "#40C4FF", -- lighter cyan (operators)
					teal = "#3FD89A", -- your TERMINAL GREEN (strings)
					green = "#5FFFC4", -- bright terminal green (diffs added)
					yellow = "#FFD54F", -- your warm amber (warnings)
					peach = "#FF8A80", -- your coral red (errors, numbers)
					red = "#FF6B6B", -- slightly deeper red
					maroon = "#CC5555", -- dim red (deleted)
					mauve = "#B388FF", -- your subtle purple (functions)
					pink = "#D1C4E9", -- lighter purple
					flamingo = "#FFE082", -- softer amber (misc)
					rosewater = "#E3F2FD", -- your soft blue-white
					lavender = "#64B5F6", -- lighter blue (variables, line numbers)
				},
			},

			-- Fine-tune specific highlight groups
			custom_highlights = function(c)
				return {
					-- Cursor line has a subtle navy glow
					CursorLine = { bg = "#0F1A2E" },
					CursorLineNr = { fg = c.sapphire, bold = true },

					-- Comments in muted teal (not purple)
					Comment = { fg = "#2A5A4A", style = { "italic" } },

					-- Floating windows (like LSP popups) match your glass aesthetic
					NormalFloat = { bg = "#080C15" },
					FloatBorder = { fg = c.sapphire, bg = "#080C15" },

					-- Telescope
					TelescopeBorder = { fg = c.blue },
					TelescopePromptBorder = { fg = c.sapphire },
					TelescopeResultsBorder = { fg = c.teal },
					TelescopePreviewBorder = { fg = c.mauve },

					-- Search/match in your amber
					Search = { fg = "#0B0E1A", bg = c.yellow, bold = true },
					IncSearch = { fg = "#0B0E1A", bg = c.teal, bold = true },

					-- Visual selection
					Visual = { bg = "#1A2A44" },

					-- Indent lines in subtle navy
					IndentBlanklineChar = { fg = "#0F1A2E" },
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
				nvimtree = true,
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
