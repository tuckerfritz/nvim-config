return {
  "akinsho/bufferline.nvim",
  lazy = false,
  dependencies = { 
    "nvim-tree/nvim-web-devicons",
    "famiu/bufdelete.nvim"
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
          padding = 1
        }
      }
    }
  },
  keys = {
    { "<leader>bn", ":BufferLineCycleNext<CR>", desc = "Next Buffer", silent = true },
    { "<leader>bb", ":BufferLineCyclePrev<CR>", desc = "Prev Buffer", silent = true },
    { "<leader>bc", 
      function()
        local bd = require('bufdelete')
        -- Get the total number of listed buffers
        local listed_buffers = vim.tbl_filter(
          function(buf) 
            return vim.bo[buf].buflisted and vim.api.nvim_buf_get_name(buf) ~= ""
          end,
          vim.api.nvim_list_bufs()
        )
        
        -- If this is the last buffer, close everything
        if #listed_buffers <= 1 then
          if require("nvim-tree.view").is_visible() then
            vim.cmd("NvimTreeClose")
          end
          vim.cmd("quit")
        else
          -- Otherwise just delete the buffer
          bd.bufdelete(0, false)
        end
      end,
      desc = "Close Buffer", 
      silent = true 
    }
  }
}
