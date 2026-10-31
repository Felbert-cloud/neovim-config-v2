-- Set <space> as the leader key
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Mouse and clipboard (scheduled to avoid slowing down startup)
vim.o.mouse = 'a'
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- UI
vim.o.showmode = false
vim.o.signcolumn = 'yes'
vim.o.laststatus = 2
vim.o.cursorline = false
vim.o.scrolloff = 10
vim.o.breakindent = true
vim.o.confirm = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.guicursor = 'a:block'

-- Indentation
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.inccommand = 'split'

-- Undo/redo persists after closing and reopening a file
vim.o.undofile = true

-- Timing
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Splits
vim.o.splitright = true
vim.o.splitbelow = true
