vim.api.nvim_create_autocmd("User", {
  pattern = "DevimLspconfigLoadAfter",
  callback = function()
    vim.lsp.enable("rust-analyzer")
  end
})

return {
  {
    'mrcjkb/rustaceanvim',
    ft = "rust"
  }
}
