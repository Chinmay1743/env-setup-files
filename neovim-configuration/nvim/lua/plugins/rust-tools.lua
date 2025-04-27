-- lua/plugins/rust-tools.lua

return {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    config = function()
      local rt = require("rust-tools")
  
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            vim.keymap.set("n", "<leader>ca", rt.hover_actions.hover_actions, { buffer = bufnr })
            vim.keymap.set("n", "<leader>rr", rt.runnables.runnables, { buffer = bufnr })
          end,
        },
      })
    end,
  }
  