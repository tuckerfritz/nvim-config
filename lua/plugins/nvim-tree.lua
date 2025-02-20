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
  keys = {
    { "<leader>e", "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>" }
  }
}
