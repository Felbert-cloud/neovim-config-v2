-- Diagnostics
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },
  virtual_text = true,
  virtual_lines = false,
  jump = {
    on_jump = function(_, bufnr)
      vim.diagnostic.open_float {
        bufnr = bufnr,
        scope = 'cursor',
        focus = false,
      }
    end,
  },
}

-- Show errors under the cursor in a floating window when idle
vim.api.nvim_create_autocmd('CursorHold', {
  group = vim.api.nvim_create_augroup('custom-diagnostic-float', { clear = true }),
  callback = function()
    if vim.api.nvim_win_get_config(0).relative ~= '' then return end
    local lnum = vim.api.nvim_win_get_cursor(0)[1] - 1
    local errors = vim.diagnostic.get(0, { lnum = lnum, severity = { min = vim.diagnostic.severity.ERROR } })
    if #errors > 0 then vim.diagnostic.open_float { focus = false } end
  end,
})

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

