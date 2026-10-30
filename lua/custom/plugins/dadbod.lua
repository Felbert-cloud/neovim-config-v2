return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  keys = {
    { '<leader>db', '<cmd>DBUIToggle<CR>', desc = 'DBUI: Toggle UI' },
    { '<leader>dba', '<cmd>DBUIAddConnection<CR>', desc = 'DBUI: Add connection' },
    { '<leader>dbf', '<cmd>DBUIFindBuffer<CR>', desc = 'DBUI: Find buffer' },
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db = 'postgres://postgres:postgres@localhost:5431/crypto_staking_db'
  end,
}
