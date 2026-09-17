return {
  'ThePrimeagen/99',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local ai99 = require '99'

    ai99.setup {
      provider = ai99.Providers.OpenCodeProvider,
      model = 'opencode/mimo-v2.5-free',
      completion = {
        source = 'opencode',
      },
      md_files = { 'AGENT.md' },
    }

    vim.keymap.set('v', '<leader>vv', function() ai99.visual() end, { desc = '99 visual rewrite' })

    vim.keymap.set('n', '<leader>vs', function() ai99.search() end, { desc = '99 search project' })

    vim.keymap.set('n', '<leader>9o', function() ai99.open() end, { desc = '99 open last result' })

    vim.keymap.set('n', '<leader>9l', function() ai99.view_logs() end, { desc = '99 view logs' })

    vim.keymap.set('n', '<leader>9x', function() ai99.stop_all_requests() end, { desc = '99 stop requests' })

    vim.keymap.set('n', '<leader>9c', function() ai99.clear_previous_requests() end, { desc = '99 clear results' })

    vim.keymap.set('n', '<leader>9m', function() require('99.extensions.telescope').select_model() end, { desc = '99 select model' })

    vim.keymap.set('n', '<leader>9p', function() require('99.extensions.telescope').select_provider() end, { desc = '99 select provider' })
  end,
}
