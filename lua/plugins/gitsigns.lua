return {
  'lewis6991/gitsigns.nvim',
  ---@module 'gitsigns'
  ---@type Gitsigns.Config
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    signs = {
      add = { text = '+' }, ---@diagnostic disable-line: missing-fields
      change = { text = '~' }, ---@diagnostic disable-line: missing-fields
      delete = { text = '_' }, ---@diagnostic disable-line: missing-fields
      topdelete = { text = '‾' }, ---@diagnostic disable-line: missing-fields
      changedelete = { text = '~' }, ---@diagnostic disable-line: missing-fields
    },
    current_line_blame = false,
    current_line_blame_opts = { delay = 300 },
  },
  keys = {
    { '<leader>gb', '<cmd>Gitsigns toggle_current_line_blame<CR>', desc = 'Toggle [G]it [B]lame' },
  },
}

-- vim: ts=2 sts=2 sw=2 et
