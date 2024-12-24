return {
  -- Some plugins
  { "lilydjwg/colorizer" },
  { "catppuccin/nvim",   name = "catppuccin", priority = 1000 },
  -- Colorscheme configure
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
  -- LazyVim plugin extras
  --
  { import = "lazyvim.plugins.extras.ai.copilot" },

  { import = "lazyvim.plugins.extras.lsp.neoconf" },

  { import = "lazyvim.plugins.extras.ui.edgy" },
  { import = "lazyvim.plugins.extras.ui.mini-indentscope" },

  { import = "lazyvim.plugins.extras.lang.clangd" },
  { import = "lazyvim.plugins.extras.lang.tailwind" },
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.json" },

  { import = "lazyvim.plugins.extras.editor.fzf" },
  { import = "lazyvim.plugins.extras.editor.illuminate" },

  { import = "lazyvim.plugins.extras.coding.neogen" },
  { import = "lazyvim.plugins.extras.coding.luasnip" },
  { import = "lazyvim.plugins.extras.coding.mini-surround" },
  { import = "lazyvim.plugins.extras.coding.nvim-cmp" },

  { import = "lazyvim.plugins.extras.formatting.prettier" },
}
