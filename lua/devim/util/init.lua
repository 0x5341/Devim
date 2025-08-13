local M = {}

function M.setupLsp(name)
  vim.api.nvim_create_autocmd("User", {
    pattern = "DevimLspconfigLoadAfter",
    callback = function()
      vim.lsp.enable(name)
    end
  })
end

return M
