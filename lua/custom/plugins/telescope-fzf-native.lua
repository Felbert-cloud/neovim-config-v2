return vim.fn.executable 'make' == 1 and {
  'nvim-telescope/telescope-fzf-native.nvim',
  build = 'make',
} or nil
