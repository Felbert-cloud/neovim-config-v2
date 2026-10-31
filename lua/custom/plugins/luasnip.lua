return {
  'L3MON4D3/LuaSnip',
  version = '2.*',
  build = (function()
    if vim.fn.has 'win32' ~= 1 and vim.fn.executable 'make' == 1 then return 'make install_jsregexp' end
    return nil
  end)(),
  config = function() require('luasnip').setup {} end,
}
