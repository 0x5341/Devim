local M = {}

function M.setupLsp(name, callback)
  callback = callback or function() end
  vim.api.nvim_create_autocmd("User", {
    pattern = "DevimLspconfigLoadAfter",
    callback = function()
      vim.lsp.enable(name)
      callback()
    end
  })
end

return M
