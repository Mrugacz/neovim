return {
	"m4xshen/autoclose.nvim",
	config = function()
		require("autoclose").setup()
		local config = {
			options = {
				disabled_filetypes = { "text", "markdown" },
				disable_when_touch = true,
				pair_spaces = true,
				auto_indent = true,
			},
		}
	end,
}
