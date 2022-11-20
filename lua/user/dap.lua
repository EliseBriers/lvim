-- local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")

-- local function sep_os_replacer(str)
--   local result = str
--   local path_sep = package.config:sub(1, 1)
--   result = result:gsub("/", path_sep)
--   return result
-- end

-- local join_path = require("lvim.utils").join_paths

local status_ok, dap = pcall(require, "dap")
if not status_ok then
  return
end

-- Set some variables to configure codelldb
-- local path = vim.fn.glob(mason_path .. "packages/codelldb/extension/")
-- local lldb_cmd = "~/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb"
-- Configure codelldb
dap.adapters.codelldb = {
  type = "server",
  host = "127.0.0.1",
  port = "13000",
  -- type = 'server',
  -- port = "${port}",
  -- executable = {
  --   command = lldb_cmd,
  --   args = { "--port", "${port}" },

  --   -- On windows you may have to uncomment this:
  --   -- detached = false,
  -- },
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      ---@diagnostic disable-next-line: param-type-mismatch, redundant-parameter
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
    -- stopOnEntry = true,
  },
}
dap.configurations.c = dap.configurations.cpp
