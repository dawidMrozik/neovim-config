return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  keys = {
    { '<leader>gg', function() Snacks.lazygit() end, desc = 'Open LazyGit' },
  },
  ---@type snacks.Config
  opts = {
    lazygit = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        { section = 'header' },
        { icon = ' ', title = 'Keymaps', section = 'keys', indent = 2, padding = 1 },
        { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
        { section = 'startup' },
      },
      preset = {
        keys = {
          { icon = ' ', key = 'f', desc = 'Find File', action = ':Telescope find_files' },
          { icon = ' ', key = 'g', desc = 'Grep Text', action = ':Telescope live_grep' },
          { icon = ' ', key = 'r', desc = 'Recent Files', action = ':Telescope oldfiles' },
          {
            icon = ' ',
            key = 't',
            desc = 'File Tree',
            action = function()
              require('lazy').load { plugins = { 'neo-tree.nvim' } }
              vim.cmd 'Neotree float reveal'
            end,
          },
          { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
        },
      },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
