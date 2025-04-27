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
        ruff = {
          mason = false,
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

if os.getenv("TERMUX_VERSION") then
  return M
else
  return {}
end
