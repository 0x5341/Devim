return {
  {
    "folke/snacks.nvim",
    lazy = false,
    keys = {
      -- Git
      { "<leader>gg", function() Snacks.lazygit() end,                   desc = "Open Lazygit" },
      -- Notifier
      { "<leader>sn", function() Snacks.notifier.show_history() end,     desc = "Show Notify History" },
      -- Explorer
      { "<leader>ft", function() Snacks.explorer() end,                  desc = "Open Snacks.explorer (FileTree Viewer)" },

      -- Pickers
      { "<leader>pp", function() Snacks.picker() end,                    desc = "Pick Picker" },
      { "<leader>pd", function() Snacks.picker.diagnostics_buffer() end, desc = "Pick Buffer Diagnostics" },
      { "<leader>pD", function() Snacks.picker.diagnostics() end,        desc = "Pick Diagnostics" },
      {
        "<leader>pf",
        function()
          Snacks.picker.files({
            cmd = "fd",
            hidden = true,
            ignored = true,
            follow = true,
            exclude = {
              ".direnv",
              ".git"
            }
          })
        end,
        desc = "Pick Files"
      },
      { "<leader>pg", function() Snacks.picker.grep() end,    desc = "Pick in Grep" },
      { "<leader>ph", function() Snacks.picker.help() end,    desc = "Pick Help File" },
      { "<leader>pk", function() Snacks.picker.keymaps() end, desc = "Pick Keymaps" },
      { "<leader>pi", function() Snacks.picker.icons() end,   desc = "Pick Icons" },
      { "<leader>pl", function() Snacks.picker.lazy() end,    desc = "Pick Lazy Spec" },

      -- Terminal
      {
        "<leader>t",
        function()
          Snacks.terminal.toggle(vim.g.__devim_config.terminal.shell)
        end,
        desc = "Open Terminal"
      },
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
      notifier = {},
      picker = {},
      quickfile = {},
      -- scroll = {},
      statuscolumn = {},
      words = {},
    },
    config = function(_, opts)
      require("snacks").setup(opts)
      _G.dd = require("snacks").debug.inspect
    end
  }
}
