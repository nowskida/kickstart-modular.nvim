return {
  {
    'rcarriga/nvim-notify',
    config = function()
      require('notify').setup {
        fps = 60,
        max_width = 50,
        max_height = 300,
      }
    end,
  },
}
