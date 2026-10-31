return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'mason-org/mason-lspconfig.nvim',
    {
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      dependencies = { 'mason-org/mason.nvim' },
      opts = { ensure_installed = { 'stylua', 'vtsls', 'postgres-language-server', 'lua-language-server' } },
    },
  },
}
