return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		view = {
			width = 30,
			side = "left",
		},
		actions = {
			open_file = {
				quit_on_open = false,
				resize_window = true,
			},
		},
	},
	config = function(_, opts)
		require("nvim-tree").setup(opts)
		-- Keybindings to navigate between nvim-tree and the buffer
		vim.api.nvim_set_keymap(
			"n",
			"<C-h>",
			'<cmd>lua require("nvim-tree.api").tree.focus()<CR>',
			{ noremap = true, silent = true }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<C-l>",
			'<cmd>lua if vim.bo.filetype == "NvimTree" then vim.cmd("wincmd l") end<CR>',
			{ noremap = true, silent = true }
		)
	end,
	keys = {
		{ "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
	},
}
