return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = {
          normal = {
            a = { fg = '#222222', bg = '#d99a3d', gui = 'bold' },
            b = { fg = '#222222', bg = '#d99a3d', gui = 'bold' },
            c = { fg = '#aaaaaa', bg = '#242424' },
          },

          insert = {
            a = { fg = '#222222', bg = '#98c379', gui = 'bold' },
            b = { fg = '#222222', bg = '#98c379', gui = 'bold' },
            c = { fg = '#aaaaaa', bg = '#242424' },
          },

          visual = {
            a = { fg = '#222222', bg = '#c678dd', gui = 'bold' },
            b = { fg = '#222222', bg = '#c678dd', gui = 'bold' },
            c = { fg = '#aaaaaa', bg = '#242424' },
          },

          replace = {
            a = { fg = '#222222', bg = '#e06c75', gui = 'bold' },
            b = { fg = '#222222', bg = '#e06c75', gui = 'bold' },
            c = { fg = '#aaaaaa', bg = '#242424' },
          },

          command = {
            a = { fg = '#222222', bg = '#61afef', gui = 'bold' },
            b = { fg = '#222222', bg = '#61afef', gui = 'bold' },
            c = { fg = '#aaaaaa', bg = '#242424' },
          },

          terminal = {
            a = { fg = '#222222', bg = '#56b6c2', gui = 'bold' },
            b = { fg = '#222222', bg = '#56b6c2', gui = 'bold' },
            c = { fg = '#aaaaaa', bg = '#242424' },
          },

          inactive = {
            a = { fg = '#aaaaaa', bg = '#303030' },
            b = { fg = '#aaaaaa', bg = '#303030' },
            c = { fg = '#aaaaaa', bg = '#242424' },
          },
        },

        icons_enabled = false,
        globalstatus = false,
        component_separators = '',
        section_separators = '',
      },

      sections = {
        lualine_a = { 'filename' },
        lualine_b = { 'filetype' },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },

      winbar = {
        lualine_a = { 'branch' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'filename' },
      },
    }
  end,
}
