-- init.lua

vim.keymap.set("n", "<leader>e", function()
    require("nvim-tree.api").tree.toggle()
  end, { noremap = true, silent = true })
  
-- Line numbers
vim.opt.number = true            -- absolute line numbers
vim.opt.relativenumber = true    -- relative numbers for movement

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")  -- points to lua/plugins folder


require("catppuccin").setup({
    flavour = "mocha" -- or "latte", "frappe", "macchiato"
  })
  vim.cmd.colorscheme("catppuccin")
  
vim.cmd.colorscheme("catppuccin")




-- Highlight current line
vim.opt.cursorline = true

-- Only show cursorline in active window
vim.api.nvim_create_autocmd({"InsertLeave", "WinEnter"}, {
    pattern = "*",
    callback = function()
      vim.opt.cursorline = true
    end,
  })
  
  vim.api.nvim_create_autocmd({"InsertEnter", "WinLeave"}, {
    pattern = "*",
    callback = function()
      vim.opt.cursorline = false
    end,
  })

  vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
      vim.opt.number = true
      vim.opt.relativenumber = true
    end,
  })
  

  require("plugins.treesitter")

require("config.lspconfig")






