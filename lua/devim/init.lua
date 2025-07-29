local M = {}

M.config_default = {
  config = {
    option = {},
    global = {},
    keymap = {},
  }
}

function M.setup(config)
  local merged = vim.tbl_deep_extend("keep", M.config_default, config)
  require("devim.config").setup(merged)
end

return M
