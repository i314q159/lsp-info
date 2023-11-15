local M = {}

local config = {
}

function M.lsp_info()
    local names = {}
    for _, server in ipairs(vim.lsp.get_active_clients({ bufnr = 0 })) do
        table.insert(names, server.name)
    end
    print("test load")
    return "󰙴 " .. table.concat(names, " ")
end

function M.setup(opts)
  config = vim.tbl_deep_extend("force", config, opts or {})
end

return M