local M = {}

local ts_get_node_text
if vim.fn.has('nvim-0.9') == 1 then
  ts_get_node_text = vim.treesitter.get_node_text
else
  ts_get_node_text = vim.treesitter.query.get_node_text
end


function M.get_node_text(node)
	return ts_get_node_text(node, 0)
end

return M
