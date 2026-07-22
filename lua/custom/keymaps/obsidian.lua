-- Create / open notes
vim.keymap.set('n', '<leader>on', '<cmd>ObsidianNew<CR>', { desc = 'New note' })
vim.keymap.set('n', '<leader>os', '<cmd>ObsidianSearch<CR>', { desc = 'Search notes' })

-- Daily notes
vim.keymap.set('n', '<leader>od', '<cmd>ObsidianToday<CR>', { desc = 'Today note' })
vim.keymap.set('n', '<leader>ot', '<cmd>ObsidianTomorrow<CR>', { desc = 'Tomorrow note' })
vim.keymap.set('n', '<leader>oy', '<cmd>ObsidianYesterday<CR>', { desc = 'Yesterday note' })
