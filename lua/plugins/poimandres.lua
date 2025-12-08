-- return {
-- 	"olivercederborg/poimandres.nvim",
-- 	name = "poimandres",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("poimandres").setup({
-- 			bold_vert_split = false,
-- 			dim_nc_background = false,
-- 			disable_background = false,
-- 			disable_float_background = false,
-- 			disable_italics = false,
-- 		})
-- 	end,
--
-- 	-- optionally set the colorscheme within lazy config
-- 	init = function()
-- 		vim.cmd("colorscheme poimandres")
-- 	end,
-- }

return {
  { "akinsho/horizon.nvim", version = "*" },
}
