local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp','luasnip'},
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
})
