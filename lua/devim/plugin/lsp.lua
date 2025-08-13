vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = args.buf,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end
    })
  end
})

return {
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    config = function()
      vim.api.nvim_exec_autocmds("User", { pattern = "DevimLspconfigLoadAfter" })
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
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      -- completion = { list = { selection = { preselect = false } } },
    },
  },
}
