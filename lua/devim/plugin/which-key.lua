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
      local geticon = function(type, name)
        local icon = MiniIcons.get(type, name)
        return {
          cat = type,
          hl = icon[1],
          name = name,
        }
      end

      add({
        {
          "<leader>g",
          group = "Git",
          icon = geticon("filetype", "git")
        }
      })
    end,
    dependencies = {
      "echasnovski/mini.icons"
    }
  }
}
