return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-jest',
  },
  keys = {
    {
      '<leader>tn',
      function()
        require('neotest').run.run()
      end,
      desc = '[T]est [N]earest',
    },
    {
      '<leader>tf',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      desc = '[T]est [F]ile',
    },
    {
      '<leader>ts',
      function()
        require('neotest').run.run { suite = true }
      end,
      desc = '[T]est [S]uite',
    },
    {
      '<leader>to',
      function()
        require('neotest').output_panel.toggle()
      end,
      desc = '[T]est [O]utput Panel',
    },
    {
      '<leader>tS',
      function()
        require('neotest').summary.toggle()
      end,
      desc = '[T]est Summary',
    },
    {
      '<leader>tl',
      function()
        require('neotest').run.run_last()
      end,
      desc = '[T]est [L]ast',
    },
    {
      '<leader>tw',
      function()
        require('neotest').watch.toggle(vim.fn.expand '%')
      end,
      desc = '[T]est [W]atch File',
    },
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-jest' {},
      },
      output = { open_on_run = false },
      quickfix = { open = false },
      status = {
        virtual_text = true,
        signs = true,
      },
    }
  end,
}

-- vim: ts=2 sts=2 sw=2 et
