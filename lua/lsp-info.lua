local M = {}

local config = {
}

local function lsp_info()
    local names = {}
    for _, server in ipairs(vim.lsp.get_active_clients({ bufnr = 0 })) do
        table.insert(names, server.name)
    end
    return "󰙴 " .. table.concat(names, " ")
end

function M.setup(opts)
  config = vim.tbl_deep_extend("force", config, opts or {})
  lsp_info()
end

return M