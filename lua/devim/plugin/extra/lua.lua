vim.api.nvim_create_autocmd("User", {
  pattern = "DevimLspconfigLoadAfter",
  callback = function()
    vim.lsp.enable("lua_ls")
  end
})

return {
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {},
  },
  {
    "saghen/blink.cmp",
    optional = true,
    opts = function (_, opts)
      opts.sources = opts.sources or {}
      opts.sources.default = opts.sources.default or {}
      opts.sources.providers = opts.sources.providers or {}
      table.insert(opts.sources.default, 1, "lazydev")
      opts.sources.providers = vim.tbl_deep_extend("force", opts.sources.providers, {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        }
      })
    end
  }
}
