return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = "VeryLazy",
    branch = 'main',
    build = ':TSUpdate',
    opts = {},
    config = function(_, opts)
      require("nvim-treesitter").setup(opts)
      require("nvim-treesitter").install(vim.g.__devim_config.treesitter.install)
    end
  }
}
