local M = {}

local function paste()
  return {
    vim.fn.split(vim.fn.getreg(""), "\n"),
    vim.fn.getregtype(""),
  }
end

M.global_default = {
  -- mapleader = " ",
  clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = paste,
      ["*"] = paste,
    },
  }

}

M.option_default = {
  clipboard = ("unnamedplus," .. vim.o.clipboard),
  encoding = "utf-8",
  number = true,
  relativenumber = true,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  smartindent = true,
  ignorecase = true,
  smartcase = true,
  incsearch = true,
  hlsearch = true,
  cursorline = true,
  showmatch = true,
  backup = false,
  writebackup = false,
  swapfile = false,
  scrolloff = 5,
  sidescrolloff = 5,
  wildmenu = true,
}

function M.setup(config)
  local glob_merged = vim.tbl_deep_extend("force", M.global_default, config.config.global)
  for attr, value in pairs(glob_merged) do
    vim.g[attr] = value
  end

  local opt_merged = vim.tbl_deep_extend("force", M.option_default, config.config.option)
  for attr, value in pairs(opt_merged) do
    vim.o[attr] = value
  end
end

return M
