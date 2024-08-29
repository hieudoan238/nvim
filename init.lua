--- Set hybrid line number ---
vim.opt.relativenumber = true
vim.opt.number = true
vim.g.vimtex_view_method = "zathura"
require("core.mappings")
require("core.plugins")

local lsp_zero = require('lsp-zero')

local lsp_attach = function(client, bufnr)
end

lsp_zero.extend_lspconfig({
  sign_text = true,
  lsp_attach = lsp_attach,
})

--- LSP UI by mason
require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = { 'pyright'},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  }
})






