return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  ---@module 'which-key'
  ---@type wk.Opts
  ---@diagnostic disable-next-line: missing-fields
  opts = {
    delay = 0,
    icons = { mappings = vim.g.have_nerd_font },
    spec = {
      { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
      { '<leader>t', group = '[T]est' },
      { '<leader>T', group = '[T]oggle' },
      { '<leader>h', group = '[H]arpoon' },
      { 'gr', group = 'LSP Actions', mode = { 'n' } },
      { '<leader>w', proxy = '<C-w>', group = '[W]indow' },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
