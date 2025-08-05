return {
  {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'akinsho/bufferline.nvim',
    event = "VeryLazy",
    version = "*",
    opts = {
      options = {
        offsets = {
          {
            filetype = "snacks_layout_box",
          },
        },
      },
      highlights = nil,
    },
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
}
