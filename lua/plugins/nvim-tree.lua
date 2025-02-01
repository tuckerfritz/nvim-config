return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    view = { width = 30 },
    update_focused_file = { enable = true },
    actions = {
      open_file = {
        quit_on_open = false, -- Keep NvimTree open
        resize_window = true,
        window_picker = { enable = false }, -- Open files in new buffers
      },
    },
  },
  keys = {
    { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
  }
}

