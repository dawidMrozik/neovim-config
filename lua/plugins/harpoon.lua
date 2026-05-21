return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      '<leader>ha',
      function()
        require('harpoon'):list():add()
      end,
      desc = '[H]arpoon [A]dd file',
    },
    {
      '<leader>he',
      function()
        local harpoon = require 'harpoon'
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = '[H]arpoon toggl[E] menu',
    },
    {
      '<leader>h1',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = '[H]arpoon slot 1',
    },
    {
      '<leader>h2',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = '[H]arpoon slot 2',
    },
    {
      '<leader>h3',
      function()
        require('harpoon'):list():select(3)
      end,
      desc = '[H]arpoon slot 3',
    },
    {
      '<leader>h4',
      function()
        require('harpoon'):list():select(4)
      end,
      desc = '[H]arpoon slot 4',
    },
    {
      '<leader>hn',
      function()
        require('harpoon'):list():next()
      end,
      desc = '[H]arpoon [N]ext',
    },
    {
      '<leader>hp',
      function()
        require('harpoon'):list():prev()
      end,
      desc = '[H]arpoon [P]rev',
    },
  },
  config = function()
    require('harpoon'):setup()
  end,
}

-- vim: ts=2 sts=2 sw=2 et
