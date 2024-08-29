
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true


require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 15,
    adaptive_size = true
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false, custom = { '^.git$' },
  },
})

vim.cmd("NvimTreeOpen")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


map('n', '<Space>treeoff', '<Cmd>NvimTreeClose<CR>', opts)
map('n', '<Space>treeon', '<Cmd>NvimTreeOpen<CR>', opts)
