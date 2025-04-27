return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    local keys = {
      { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
      { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
      { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
      { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
      {
        icon = " ",
        key = "c",
        desc = "Config",
        action = ":lua Snacks.explorer.open({ cwd = vim.fn.stdpath('config') })",
      },
      { icon = " ", key = "s", desc = "Restore Session", section = "session" },
      { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
      { icon = " ", key = "q", desc = "Quit", action = ":qa" },
    }
    if os.getenv("TERMUX_VERSION") then
      table.insert(keys, 7, {
        icon = "󰁨 ",
        key = "tm",
        desc = "Mason FixShebang",
        action = ":lua require('termux').MasonFixShebang()",
      })
    end
    opts.dashboard = {
      enabled = true,
      width = 36,
      rows = nil,
      preset = {
        keys = keys,
        header = table.concat({
          "",
          " █████████          █████████ ",
          "████████████      ████████████",
          " ███████████      ███████████ ",
          "██████████████████████████████",
          "██████████████████████████████",
          "██████████████████████████████",
          "██████████████████████████████",
          "██████████████████████████████",
          "   ████████████████████████   ",
          "   ████████████████████████   ",
          "       ████████████████       ",
          "       ████████████████       ",
          "           ████████           ",
          "           ████████           ",
          "",
        }, "\n"),
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
    }
    return opts
  end,
}
