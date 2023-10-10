return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function ()
    local treesitter = require 'nvim-treesitter.configs'

    -- configure treesitter
    treesitter.setup {
      highlight = { --enable syntax highlight
        enable = true,
      },
      indent = { enable = true }, -- enable indentation
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decrermental = "<bs>",
        },
      }
    }
  end
}
