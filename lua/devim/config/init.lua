local M = {}

function M.setup(config)
  require("devim.config.option").setup(config)
  require("devim.config.keymap").setup(config)
end

return M
