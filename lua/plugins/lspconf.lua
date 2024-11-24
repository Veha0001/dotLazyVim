local M = {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = false,
        },
        stylua = {
          enabled = false,
          mason = false,
        },
        clangd = {
          mason = false,
        },
        emmet_ls = {
          enabled = false,
        },
      },
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
    },
  },
}
return M
