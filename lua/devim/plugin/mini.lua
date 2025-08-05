return {
  {
    "echasnovski/mini.move",
    keys = {
      { "<M-h>", mode = "x" },
      { "<M-l>", mode = "x" },
      { "<M-j>", mode = "x" },
      { "<M-k>", mode = "x" },
      { "<M-h>", mode = "n" },
      { "<M-l>", mode = "n" },
      { "<M-j>", mode = "n" },
      { "<M-k>", mode = "n" },
    },
    version = false,
    opts = {}
  },
  {
    "echasnovski/mini.pairs",
    event = { "InsertEnter" },
    version = false,
    opts = {}
  },
  {
    "echasnovski/mini.surround",
    keys = {
      { "sa", mode = "n" },
      { "sd", mode = "n" },
      { "sf", mode = "n" },
      { "sF", mode = "n" },
      { "sh", mode = "n" },
      { "sr", mode = "n" },
      { "sn", mode = "n" },
    },
    version = false,
    opts = {}
  },
  {
    "echasnovski/mini.bracketed",
    keys = {
      { "[b", mode = "n" },
      { "]b", mode = "n" },
      { "[c", mode = "n" },
      { "]c", mode = "n" },
      { "[x", mode = "n" },
      { "]x", mode = "n" },
      { "[d", mode = "n" },
      { "]d", mode = "n" },
      { "[f", mode = "n" },
      { "]f", mode = "n" },
      { "[i", mode = "n" },
      { "]i", mode = "n" },
      { "[j", mode = "n" },
      { "]j", mode = "n" },
      { "[l", mode = "n" },
      { "]l", mode = "n" },
      { "[o", mode = "n" },
      { "]o", mode = "n" },
      { "[q", mode = "n" },
      { "]q", mode = "n" },
      { "[t", mode = "n" },
      { "]t", mode = "n" },
      { "[u", mode = "n" },
      { "]u", mode = "n" },
      { "[w", mode = "n" },
      { "]w", mode = "n" },
      { "[y", mode = "n" },
      { "]y", mode = "n" },
    },
    version = false,
    opts = {}
  },
  {
    "echasnovski/mini.jump",
    keys = {
      { "f", mode = { "n", "x", "o" } },
      { "F", mode = { "n", "x", "o" } },
      { "t", mode = { "n", "x", "o" } },
      { "T", mode = { "n", "x", "o" } },
      { ";", mode = { "n", "x", "o" } },
    },
    version = false,
    opts = {},
  },
  {
    "echasnovski/mini.jump2d",
    keys = {
      { "<leader><CR>", mode = { "n", "x", "o" } },
    },
    opts = {
      mappings = {
        start_jumping = "<leader><CR>",
      },
    },
  },
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    version = false,
    opts = {},
  },
  {
    "echasnovski/mini.cursorword",
    event = "VeryLazy",
    version = false,
    opts = {},
  },
}
