-- lua/plugins/terminal.lua

return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 15,
        open_mapping = [[<leader>t]],
        shade_terminals = true,
        direction = "horizontal", -- terminal opens at the bottom
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        close_on_exit = true,
        shell = vim.o.shell,
      })
    end,
  }
  