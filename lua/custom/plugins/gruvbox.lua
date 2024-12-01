return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      require('gruvbox').setup {
        contrast = 'hard',
        --invert_tabline = true,
        terminal_colors = true,
        --inverse = true,
        --        palette_overrides = {
        --          dark0_hard = '#1b1b1b',
        --        },
        overrides = {
          SignColumn = { bg = '#1d2021' },
          RenderMarkdownCode = { bg = '#1d2021' },
          RenderMarkdownH3Bg = { bg = '#282828' },
          RenderMarkdownH4Bg = { bg = '#282828' },
          RenderMarkdownH5Bg = { bg = '#282828' },
          RenderMarkdownH6Bg = { bg = '#282828' },
        },
      }
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
}
