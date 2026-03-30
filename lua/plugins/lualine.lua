return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'auto',
    },
    sections = {
      lualine_a = { { 'mode', fmt = function(s)
        if s == 'V-BLOCK' then return 'VB' end
        if s == 'V-LINE' then return 'VL' end
        return s:sub(1, 1)
      end } },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = { 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
