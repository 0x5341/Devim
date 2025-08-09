vim.api.nvim_create_autocmd("User", {
  pattern = "DevimLspconfigLoadAfter",
  callback = function()
    vim.lsp.enable("lua_ls")
  end
})

return {}
