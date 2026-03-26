return {
  'kdheepak/lazygit.nvim',
  cmd = 'LazyGit',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>gg', '<cmd>LazyGit<CR>', desc = 'Open LazyGit' },
  },
}

-- vim: ts=2 sts=2 sw=2 et
