return {
  {
    "folke/snacks.nvim",
    lazy = false,
    keys = {
      { "<leader>gg", function() Snacks.lazygit() end, desc = "Open Lazygit" }
    },
    opts = {
      bigfile = {},
      dashboard = {
        sections = {
          { section = "header" },
          { section = "projects" },
          { section = "startup" }
        }
      },
      input = {},
      lazygit = {},
      scope = {},
      indent = {},
    }
  }
}
