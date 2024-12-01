return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      require('catppuccin').setup {
        flavour = 'macchiato', -- latte, frappe, macchiato, mocha
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
