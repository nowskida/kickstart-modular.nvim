return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  --  event = {
  --    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --    --   -- refer to `:h file-pattern` for more examples
  --    'BufReadPre ~/vaults/work/*.md',
  --    'BufNewFile ~/vaults/work/*.md',
  --  },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = 'work',
        path = '~/vaults/work',
      },
      {
        name = 'personal',
        path = '~/vaults/personal',
      },
    },

    ui = {
      enable = false,
    },
    preferred_link_style = 'wiki',
    wiki_link_func = 'prepend_note_path',
  },
  attachments = {
    -- The default folder to place images in via `:ObsidianPasteImg`.
    -- If this is a relative path it will be interpreted as relative to the vault root.
    -- You can always override this per image by passing a full path to the command instead of just a filename.
    img_folder = 'assets/imgs', -- This is the default
    -- A function that determines the text to insert in the note when pasting an image.
    -- It takes two arguments, the `obsidian.Client` and an `obsidian.Path` to the image file.
    -- This is the default implementation.
    ---@param client obsidian.Client
    ---@param path obsidian.Path the absolute path to the image file
    ---@return string
    img_text_func = function(client, path)
      path = client:vault_relative_path(path) or path
      return string.format('![%s](%s)', path.name, path)
    end,
  },

  vim.keymap.set('n', '<leader>oo', ':ObsidianOpen ', { desc = '[O]pen note' }),
  vim.keymap.set('n', '<leader>ob', ':ObsidianBacklinks<CR>', { silent = true, desc = 'Open [B]acklinks' }),
  vim.keymap.set('n', '<leader>on', ':ObsidianNew<CR>', { silent = true, desc = '[N]ew note' }),
  vim.keymap.set('n', '<leader>oq', ':ObsidianQuickSwitch<CR>', { silent = true, desc = '[Q]uick switch' }),
  vim.keymap.set('n', '<leader>os', ':ObsidianSearch<CR>', { silent = true, desc = '[S]earch' }),
  vim.keymap.set('v', '<leader>ol', ':ObsidianLink', { silent = true, desc = '[L]ink' }),
  vim.keymap.set('n', '<leader>ow', ':e ~/vaults/work/main.md<CR>', { silent = true, desc = 'Open [W]ork vault' }),
  vim.keymap.set('n', '<leader>op', ':e ~/vaults/personal/main.md<CR>', { silent = true, desc = 'Open [P]ersonal vault' }),
}
