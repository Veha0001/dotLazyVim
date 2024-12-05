local M = {}

-- Define the TermuxFixSheBang function
function M.Run()
  -- Get the Neovim configuration path and append the script path
  local script = vim.fn.stdpath("config") .. "/lua/scripts/fixshebang" -- Adjust this path if necessary

  -- Use 'bash' to execute the script
  local result = vim.fn.system("bash " .. vim.fn.shellescape(script))

  -- Log the execution result using vim.notify
  if vim.v.shell_error == 0 then
    vim.notify("Shebang fix script executed successfully.", vim.log.levels.INFO)
  else
    vim.notify("Failed to execute shebang fix script. Error: " .. result, vim.log.levels.ERROR)
  end
end

return M
