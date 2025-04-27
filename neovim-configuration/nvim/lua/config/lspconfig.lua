-- lua/config/lspconfig.lua

-- Setup Mason
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "rust_analyzer" },
})

-- Setup LSP servers
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()


lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
    on_attach = function(_, bufnr)
      -- Format on save
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format()
        end,
      })
    end,
  })
  

-- Setup Autocomplete (nvim-cmp)
local cmp = require("cmp")
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
})



