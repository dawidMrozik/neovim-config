return {
  'saghen/blink.cmp',
  event = 'VimEnter',
  version = '1.*',
  dependencies = {
    {
      'L3MON4D3/LuaSnip',
      version = '2.*',
      build = (function()
        if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
          return
        end
        return 'make install_jsregexp'
      end)(),
      opts = {},
    },
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'enter' },
    appearance = { nerd_font_variant = 'mono' },
    completion = {
      documentation = { auto_show = false, auto_show_delay_ms = 500 },
      menu = {
        draw = {
          columns = { { 'kind_icon' }, { 'label' }, { 'label_description' }, { 'source_info' } },
          components = {
            source_info = {
              text = function(ctx)
                return ctx.item.detail or ''
              end,
              highlight = 'BlinkCmpLabelDescription',
            },
          },
        },
      },
    },
    sources = { default = { 'lsp', 'path', 'snippets' } },
    snippets = { preset = 'luasnip' },
    fuzzy = { implementation = 'lua' },
    signature = { enabled = true },
  },
}

-- vim: ts=2 sts=2 sw=2 et
