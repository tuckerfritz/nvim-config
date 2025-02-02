return {
	"akinsho/bufferline.nvim",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"famiu/bufdelete.nvim",
	},
	opts = {
		options = {
			separator_style = "slant",
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "left",
					padding = 1,
				},
			},
      close_command = function(bufnum)
        local bd = require("bufdelete").bufdelete
        bd(bufnum, false)
      end
		},
	},
	keys = {
		{ "<leader>bn", ":BufferLineCycleNext<CR>", desc = "Next Buffer", silent = true },
		{ "<leader>bb", ":BufferLineCyclePrev<CR>", desc = "Prev Buffer", silent = true },
		{
			"<leader>bc",
			function()
		    local bd = require("bufdelete").bufdelete
        bd(bufnum, false)
      end,
			desc = "Close Buffer",
			silent = true,
		},
	},
}
