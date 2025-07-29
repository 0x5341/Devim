local M = {}

M.default = {
  {
    mode = "i",
    lhs = "jj",
    rhs = "<ESC>",
    opts = {},
  },
  {
    mode = "n",
    lhs = "<ESC>",
    rhs = "<cmd>nohlsearch<cr>"
  },
}

function M.setup(config)
  local merged = vim.tbl_deep_extend("force", M.default, config.config.keymap)
  for _, value in ipairs(merged) do
    vim.keymap.set(value.mode, value.lhs, value.rhs, value.opts)
  end
end

return M
