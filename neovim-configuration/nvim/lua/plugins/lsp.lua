-- lua/plugins/lsp.lua

return {
    -- Core LSP
    "neovim/nvim-lspconfig",
  
    -- Mason for managing LSP binaries
    {
      "williamboman/mason.nvim",
    },
    "williamboman/mason-lspconfig.nvim",
  
    -- Autocompletion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  }
  