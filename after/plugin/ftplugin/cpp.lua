vim.api.nvim_create_autocmd("FileType", {
  desc = "cpp ft mappings",
  group = vim.api.nvim_create_augroup("cpp_mapping", { clear = true }),
  pattern = "cpp",
  callback = function(opts)
      vim.keymap.set("n", "<Space>run", ":term g++ %:p && ./a.out")
  end
})
