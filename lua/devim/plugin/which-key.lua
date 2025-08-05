return {
  {
    "folke/which-key.nvim",
    event = { "VeryLazy" },
    opts = {
      preset = "helix"
    },
    config = function(_, opts)
      require("which-key").setup(opts)

      local add = require("which-key").add

      add({
        {
          "<leader>g",
          group = "Git",
          icon = { icon = "", color = "red" },
        },
        {
          "<leader>s",
          group = "Show Something",
          icon = { icon = "󰚗", color = "blue" },
        },
        {
          "<leader>f",
          group = "Filer",
          icon = { icon = "󰱼", color = "gray" },
        },
        {
          "<leader>p",
          group = "Picker",
          icon = { icon = "", color = "azure" },
        },
      })
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  }
}
