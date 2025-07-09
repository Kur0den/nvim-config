vim.diagnostic.config({
  virtual_text = {
    prefix = '●', 
    spacing = 2,
    source = 'always',
    severity = {
      min = vim.diagnostic.severity.INFO,
    }
  },
  signs = true,
  update_in_insert = false,
  float = {
    source = "always",
    header = "",
    prefix = "",
    border = "rounded",
  },
})

vim.lsp.inlay_hint.enable(true, nil)
