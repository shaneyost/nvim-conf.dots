local M = {}
function M.P(value)
    -- Check if the value is a table, if so, inspect it
    local output = (type(value) == "table") and vim.inspect(value) or tostring(value)
    -- Print in a way that avoids truncation
    vim.api.nvim_echo({ { output, "Normal" } }, true, {})
end
return M
