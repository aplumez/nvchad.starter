-- All of the "GLOBAL" plugins -> the one that are language agnostic

local vim_dispatch_plugins = { "Copen", "Start", "Compile", "Dispatch" }

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "clojure-lsp",
        "typescript-language-server",
        "bash-language-server",
        "json-lsp",
        "clj-kondo",
        "cljfmt",
        "eslint-lsp",
        "pyright",
        "black",
        "stylelint",
        "jsonlint",
        "eslint_d",
        "flake8",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "bash",
        "lua",
        "vimdoc",
        "html",
        "css",
        "scss",
        "clojure",
        "javascript",
        "java",
        "python",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        renderer = {
          group_empty = true,
        },
        update_focused_file = {
          enable = true,
        },
      }
    end,
  },
  {
    "Wansmer/symbol-usage.nvim",
    event = "BufReadPre",
    config = function()
      require("symbol-usage").setup {
        request_pending_text = false,
      }
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
  },
  {
    "linrongbin16/gitlinker.nvim",
    cmd = "GitLink",
    opts = {},
    keys = {
      { "<leader>gy", "<cmd>GitLink<cr>", mode = { "n", "v" }, desc = "Yank git link" },
      { "<leader>gY", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git link" },
    },
  },
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" },
  },
  {
    "tpope/vim-dispatch",
    cmd = vim_dispatch_plugins,
  },
  {
    "radenling/vim-dispatch-neovim",
    cmd = vim_dispatch_plugins,
  },
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {},
    event = "VeryLazy",
  },
}
