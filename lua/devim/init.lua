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
    install = { "lua", "markdown", "markdown_inline" }
  },
  extra = {
    nix = {
      nixd = {}
    }
  },
}

function M.merger(_, prev, value)
  if vim.islist(prev) and vim.islist(value) then
    local cp = vim.deepcopy(prev)
    return vim.list_extend(cp, value)
  else
    return value
  end
end

function M.setup(config)
  local merged = vim.tbl_deep_extend(M.merger, M.config_default, config)
  require("devim.config").setup(merged)

  vim.g.__devim_config = merged
end

return M
