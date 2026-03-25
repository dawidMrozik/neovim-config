return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = { 'MunifTanjim/nui.nvim' },
  opts = {
    views = {
      cmdline_popup = {
        position = { row = 4, col = '50%' },
      },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
