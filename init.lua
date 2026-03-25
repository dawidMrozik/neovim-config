-- Set <space> as the leader key (must happen before plugins load)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable netrw (using Neo-tree instead)
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

vim.o.termguicolors = true
vim.g.have_nerd_font = false

require 'config.options'
require 'config.keymaps'
require 'config.autocmds'
require 'config.lazy'

-- vim: ts=2 sts=2 sw=2 et
