return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  keys = {
    { '<leader>gg', function() Snacks.lazygit() end, desc = 'Open LazyGit' },
    { '~', function() Snacks.terminal(nil, { cwd = Snacks.git.get_root() }) end, desc = 'Floating Terminal' },
    { '<leader><leader>', function() Snacks.picker.smart() end, desc = 'Find files (smart)' },
  },
  ---@type snacks.Config
  opts = {
    lazygit = { enabled = true },
    terminal = { enabled = true },
    picker = {
      enabled = true,
      win = {
        input = {
          keys = {
            ['<PageDown>'] = { 'preview_scroll_down', mode = { 'i', 'n' } },
            ['<PageUp>'] = { 'preview_scroll_up', mode = { 'i', 'n' } },
          },
        },
      },
    },
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
