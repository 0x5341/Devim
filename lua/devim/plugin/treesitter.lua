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

      -- autocmds
      local aug = vim.api.nvim_create_augroup("devim-treesitter", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        group = aug,
        pattern = "*",
        callback = function(ev)
          local lang_name = vim.treesitter.language.get_lang(ev.match) or ev.match
          if vim.treesitter.language.add(lang_name) then
            vim.treesitter.start()
            vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end
      })
    end
  },
  {

  },
}
