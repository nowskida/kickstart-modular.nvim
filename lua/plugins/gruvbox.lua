return {
  {
    'f4z3r/gruvbox-material.nvim',
    enabled = true,
    priority = 1000,
    config = function()
      italics = true -- enable italics in general
      contrast = 'medium' -- set contrast, can be any of "hard", "medium", "soft"
      --      comments = {
      --        italics = true -- enable italic comments
      --      },
      --      background = {
      --        transparent = false -- set the background to transparent
      --      },
      --      float = {
      --        force_background = fals -- force background on floats even when background.transparent is set
      --        background_color = nil -- set color for float backgrounds. If nil, uses the default color set
      --        -- by the color scheme
      --      },
      --      signs = {
      --        highlight = true -- whether to highlight signs
      --      },
      customize = nil -- customize the theme in any way you desire, see below what this
      -- configuration accepts
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },
}
