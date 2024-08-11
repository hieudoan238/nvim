require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = { "latex", },
    additional_vim_regex_highlighting = false,
  },
}
vim.g.vimtex_syntax_enabled = 0
