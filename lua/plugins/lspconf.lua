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

-- Function to check if the platform is Android
local function is_android()
  local platform = jit and jit.os or nil -- LuaJIT provides `jit.os`
  if platform then
    return platform == "Linux" and package.config:sub(1, 1) == "/" and os.getenv("ANDROID_ROOT")
  else
    -- Fallback if `jit` is not available
    return package.config:sub(1, 1) == "/" and os.getenv("ANDROID_ROOT")
  end
end

-- Return M only if running on Android
if is_android() then
  return M
else
  return {}
end
