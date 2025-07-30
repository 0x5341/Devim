return {
  {
    "stevearc/oil.nvim",
    opts = {
      default_file_explorer = false,
      float = {
        max_width = 0.4,
      },
    },
    keys = {
      {
        "<leader>fe",
        function()
          require("oil").toggle_float()
        end,
        desc = "Open Oil (FileTree Editor)"
      },
    },
    cmd = "Oil"
  },
}
