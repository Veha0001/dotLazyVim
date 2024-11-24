return {
  -- Some plugins
  { "lilydjwg/colorizer" },
  -- Colorscheme configure
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
  -- Plugin extras
  { import = "lazyvim.plugins.extras.lsp.neoconf" },
  { import = "lazyvim.plugins.extras.lang.clangd" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.editor.fzf" },
  { import = "lazyvim.plugins.extras.editor.overseer" },
  { import = "lazyvim.plugins.extras.editor.illuminate" },
  { import = "lazyvim.plugins.extras.vscode" },
  { import = "lazyvim.plugins.extras.editor.outline" },
  { import = "lazyvim.plugins.extras.coding.neogen" },
  { import = "lazyvim.plugins.extras.coding.luasnip" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },
}
