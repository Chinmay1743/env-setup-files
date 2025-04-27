-- lua/plugins/crates.lua

return {
    "saecki/crates.nvim",
    tag = "v0.4.0",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup()
  
      -- Optional keymaps (only active in Cargo.toml)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "toml",
        callback = function()
          local crates = require("crates")
          local opts = { silent = true, buffer = true }
          vim.keymap.set("n", "<leader>cu", crates.update_crate, opts)
          vim.keymap.set("n", "<leader>cv", crates.show_versions_popup, opts)
          vim.keymap.set("n", "<leader>cf", crates.show_features_popup, opts)
        end,
      })
    end,
}


