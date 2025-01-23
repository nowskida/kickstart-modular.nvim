return {
  {
    'sainnhe/everforest',
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.everforest_transparent_background = 0
      vim.g.everforest_enable_italic = true
      --vim.g.everforest_foreground = 'mix'
      vim.g.everforest_background = 'hard'
      vim.g.everforest_better_performance = 1
      vim.g.everforest_float_style = 'dim'
      vim.g.everforest_cursor = 'auto'
      vim.g.everforest_ui_contrast = 'high'
      vim.cmd.colorscheme 'everforest'
    end,
  },
}
