-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree float reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>t', ':Neotree float reveal<CR>', desc = 'NeoTree float', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    window = {
      position = 'float',
    },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<leader>t'] = 'close_window',
        },
      },
    },
  },
}
