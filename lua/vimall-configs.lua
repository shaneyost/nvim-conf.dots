local helper = require("plugins.utils.helper-utils")
_G.P = helper.P

-- Cursor
vim.cmd("set guicursor=n:block,v-i-r:hor20")

-- 24-bit Color Support
vim.cmd("set termguicolors")

-- Tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Column
vim.cmd("set colorcolumn=80")
vim.api.nvim_create_augroup("ColorColumnPerFiletype", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    group = "ColorColumnPerFiletype",
    pattern = { "c", "lua" },
    callback = function()
        vim.opt_local.colorcolumn = "80"
    end,
})
vim.api.nvim_create_autocmd("FileType", {
    group = "ColorColumnPerFiletype",
    pattern = { "cpp", "cxx", "hpp", "hxx" },
    callback = function()
        vim.opt_local.colorcolumn = "100"
    end,
})

-- Numbering
vim.cmd("set number")

-- <leader>
vim.g.mapleader = " "

-- Remap Window Switches
-- Map Ctrl + h to move to the left window
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", {
	desc = "move to left",
	noremap = true,
	silent = true,
})
-- Map Ctrl + l to move to the right window
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", {
	desc = "move to right",
	noremap = true,
	silent = true,
})
-- Map Ctrl + j to move to the window below
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", {
	desc = "move to below",
	noremap = true,
	silent = true,
})
-- Map Ctrl + k to move to the window above
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", {
	desc = "move to above",
	noremap = true,
	silent = true,
})

-- Map <leader>r to run a currently opened file
-- (:w means save, :!./% means execute it)
vim.api.nvim_set_keymap("n", "<leader>r", ":w<CR>:!./%<CR>", {
    noremap = true,
    silent = true
})
