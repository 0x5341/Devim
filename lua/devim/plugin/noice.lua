return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>sm", "<cmd>NoiceHistory<cr>", desc = "Show Message History" },
    },
    opts = {
      presets = {
        command_palette = true,
        long_message_to_split = true,
      },
      commands = {
        history = {
          view = "popup",
        },
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = {
      stages = "slide"
    },
  }
}
