return {
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      vim.api.vim_exec_autocmds("User", { pattern = "DevimLspconfigLoadAfter" })
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
  },
  {
    "saghen/blink.cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    version = "v1.*",
    dependencies = "L3MON4D3/LuaSnip",
    opts = {
      keymap = {
        preset = "enter",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<C-p>"] = { "snippet_backward", "fallback" },
        ["<C-n>"] = { "snippet_forward", "fallback" },
      },
      snippets = { preset = 'luasnip' },
      signature = { enabled = true },
      -- completion = { list = { selection = { preselect = false } } },
    },
  },
}
