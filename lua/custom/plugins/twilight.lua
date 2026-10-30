return {
  'folke/twilight.nvim',
  keys = {
    { '<leader>tc', '<cmd>Twilight<CR>', desc = 'Toggle Twilight' },
    { '<leader>td', '<cmd>Twilight disable<CR>', desc = 'Disable Twilight' },
    { '<leader>te', '<cmd>Twilight enable<CR>', desc = 'Enable Twilight' },
  },
  opts = { dimming = { alpha = 0.25 } },
}
