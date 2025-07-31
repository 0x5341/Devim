local M = {}

M.config_default = {
  config = {
    option = {},
    global = {},
    keymap = {},
  },
  terminal = {
    shell = "bash"
  },
  treesitter = {
    install = {}
  },
}

function M.setup(config)
  local merged = vim.tbl_deep_extend("force", M.config_default, config)
  require("devim.config").setup(merged)

  vim.g.__devim_config = merged
end

return M
