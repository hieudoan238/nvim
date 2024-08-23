local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip', option = { show_autosnippets = true }},
    { name = 'nvim-lua' },
  },
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
  }),
  completion = {
    autocomplete = { cmp.TriggerEvent.TextChanged }
  }
})

