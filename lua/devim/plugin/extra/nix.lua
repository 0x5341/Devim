require("devim.util").setupLsp("nixd", function()
  vim.lsp.config("nixd", {
    settings = vim.g.__devim_config.extra.nix,
  })
end)

return {}
