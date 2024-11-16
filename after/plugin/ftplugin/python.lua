vim.api.nvim_create_autocmd("FileType", {
  desc = "python ft mappings",
  group = vim.api.nvim_create_augroup("py_mapping", { clear = true }),
  pattern = "python",
  callback = function(opts)
      vim.keymap.set("n", "<Space>run", ":w <bar> exec '!python3 '.shellescape('%')<CR>")
  end
})

vim.api.nvim_create_autocmd("FileType", {
  desc = "python venv activate/deactivate",
  group = vim.api.nvim_create_augroup("py_ven", { clear = true }),
  pattern = "python",
  callback = function(opts)
    -- Activation mapping
    vim.keymap.set("n", "<Space>activate", function()
      vim.ui.input({ prompt = "Enter venv name: " }, function(venv_name)
        if venv_name then
          vim.cmd("!" .. vim.fn.expand("source ~/pyenv/" .. venv_name .. "/bin/activate"))
        end
      end)
    end, { buffer = opts.buf, desc = "Activate Python venv" })

    -- Deactivation mapping
    vim.keymap.set("n", "<Space>deactivate", function()
      vim.cmd("!deactivate")
    end, { buffer = opts.buf, desc = "Deactivate Python venv" })
  end
})
