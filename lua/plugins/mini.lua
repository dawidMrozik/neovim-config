return {
  'nvim-mini/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    require('mini.surround').setup()

    local statusline = require 'mini.statusline'
    statusline.setup {
      use_icons = vim.g.have_nerd_font,
      content = {
        active = function()
          local _, mode_hl = MiniStatusline.section_mode { trunc_width = 0 }
          local mode_letter = vim.fn.mode():sub(1, 1):upper()
          local branch = vim.b.gitsigns_head or ''
          local filename = vim.fn.expand '%:~:.'
          local modified = vim.bo.modified and ' [+]' or ''

          return MiniStatusline.combine_groups {
            { hl = mode_hl, strings = { mode_letter } },
            { hl = 'MiniStatuslineDevinfo', strings = { branch } },
            { hl = 'MiniStatuslineFilename', strings = { filename .. modified } },
            '%=',
            { hl = 'MiniStatuslineFileinfo', strings = { vim.bo.filetype } },
            { hl = mode_hl, strings = { '%2l:%-2v' } },
          }
        end,
      },
    }
  end,
}

-- vim: ts=2 sts=2 sw=2 et
