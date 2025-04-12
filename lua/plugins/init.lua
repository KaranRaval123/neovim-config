return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
      indent = { enable = true},
    },
  },

  "nvim-lua/plenary.nvim",

  {
    "nvchad/ui",
    config = function()
      require "nvchad"
    end
  },

  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  "nvzone/volt",

-- {
  --   "andweeb/presence.nvim",
  --   lazy = false,
  --   config =function ()
  --     require('configs.presence')
  --   end,
  -- },
  --
{
    'ThePrimeagen/vim-be-good',
    lazy = false,
  },
}
