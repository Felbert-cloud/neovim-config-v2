return {
  'mistweaverco/kulala.nvim',
  version = '6.*',
  keys = {
    { '<leader>rr', mode = { 'n', 'v' }, desc = 'Send request' },
  },
  opts = {
    global_keymaps = {
      ['Send request'] = {
        'r',
        function() require('kulala').run() end,
        mode = { 'n', 'v' },
        desc = 'Send request',
      },
    },
    global_keymaps_prefix = '<leader>rr',
  },
}
