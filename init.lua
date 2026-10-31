-- Neovim entrypoint
vim.loader.enable()

require 'custom.options'

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Plugin specs live in lua/custom/plugins/*.lua
require('lazy').setup { { import = 'custom.plugins' } }

require 'custom.lsp'
require 'custom.keymaps'
require 'custom.core'

-- vim: ts=2 sts=2 sw=2 et
