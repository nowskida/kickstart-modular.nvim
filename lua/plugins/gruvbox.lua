return {
  {
    'ellisonleao/gruvbox.nvim',
    enabled = true,
    priority = 1000,
    opts = {},
    config = function()
      require('gruvbox').setup {
        contrast = 'dark', -- set contrast, can be any of "hard", "medium", "soft"
      }
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
}
