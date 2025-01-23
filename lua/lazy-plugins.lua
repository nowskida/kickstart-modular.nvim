require('lazy').setup({

  -- Kickstart
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lspconfig',
  require 'plugins.conform',
  require 'plugins.cmp',
  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.treesitter',
  -- require 'plugins.debug',
  --require 'plugins.indent_line',
  --require 'plugins.lint',
  require 'plugins.autopairs',
  require 'plugins.neo-tree',

  -- Custom
  --require 'plugins.catppuccin',
  --require 'plugins.everforest',
  require 'plugins.gruvbox-material',
  --require 'plugins.gruvbox',
  require 'plugins.barbecue',
  require 'plugins.colorizer',
  require 'plugins.markdown',
  require 'plugins.render-markdown',
  require 'plugins.markdown-preview',
  require 'plugins.obsidian',
  require 'plugins.snacks',
  --require 'plugins.notify',
  require 'plugins.noice',

  --require 'plugins.neogit',
  --require 'plugins.tokyonight',
  --  require 'custom/plugins/harpoon',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=4 sts=2 sw=2 et
