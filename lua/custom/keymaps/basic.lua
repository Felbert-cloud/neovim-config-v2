-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Exit terminal mode in the builtin terminal with <Esc><Esc>
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Window navigation with <leader><hjkl>
vim.keymap.set('n', '<leader>h', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<leader>l', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<leader>j', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<leader>k', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Exit insert mode using jk or kj
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', 'kj', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', 'JK', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', 'KJ', '<Esc>', { desc = 'Exit insert mode' })

-- Exit terminal mode using jk or kj
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
vim.keymap.set('t', 'kj', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
vim.keymap.set('t', 'JK', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
vim.keymap.set('t', 'KJ', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

-- Quit, save, explore
vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = 'Quit Neovim' })
vim.keymap.set('n', '<leader>L', '<cmd>LspRestart<CR>', { desc = 'Restart LSP' })
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>', { desc = 'Save Neovim' })
vim.keymap.set('n', '<leader>e', '<cmd>Explore<CR>', { desc = 'Open File' })

-- Window splits
vim.keymap.set('n', '<leader>ws', '<cmd>sp<CR>', { desc = 'Horizontal split' })
vim.keymap.set('n', '<leader>wv', '<cmd>vs<CR>', { desc = 'Vertical split' })

-- netrw: h to go up, l to open
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'netrw',
  callback = function()
    local opts = { buffer = true, silent = true }
    vim.keymap.set('n', 'l', '<Plug>NetrwLocalBrowseCheck', opts)
    vim.keymap.set('n', 'h', '<Plug>NetrwBrowseUpDir', opts)
  end,
})

-- Opencode toggle
vim.keymap.set('n', '<leader>oo', function()
  require('opencode').toggle()
end, { desc = 'Open opencode' })

-- Format buffer
vim.keymap.set({ 'n', 'v' }, '<leader>f', function() require('conform').format { async = true } end, { desc = '[F]ormat buffer' })
