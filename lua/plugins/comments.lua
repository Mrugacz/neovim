return {
	{
		"winston0410/commented.nvim",
		config = function()
			require("commented").setup({
				comment_padding = " ",
				keybindings = {
					n = "<leader>c",
					v = "<leader>c",
					nl = "<leader>cc",
				},
				prefer_block_comment = true,
				set_keybindings = true,
				ex_mode_cmd = "Comment",
			})
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		"LudoPinelli/comment-box.nvim",
		config = function()
			local keymap = vim.keymap.set
			local opts = { noremap = true, silent = true }

			-- Titles
			keymap({ "n", "v" }, "<Leader>Cb", "<Cmd>CBccbox<CR>", opts)
			-- Named parts
			keymap({ "n", "v" }, "<Leader>Ct", "<Cmd>CBllline<CR>", opts)
			-- Simple line
			keymap("n", "<Leader>Cl", "<Cmd>CBline<CR>", opts)
			-- Marked comments
			keymap({ "n", "v" }, "<Leader>Cm", "<Cmd>CBllbox14<CR>", opts)
		end,
	},
}
