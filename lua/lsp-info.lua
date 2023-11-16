local M = {}

local config = {}

function M.lsp_info()
	local names = {}
	for _, server in pairs(vim.lsp.get_active_clients({ bufnr = 0 })) do
		table.insert(names, server.name)
	end
	if next(names) ~= nil then
		return table.concat(names, "/")
	else
		return ""
	end
end

function M.setup(opts)
	config = vim.tbl_deep_extend("force", config, opts or {})
end

return M