-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
-- tab width
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- expand tabs into spaces
vim.opt.expandtab = true
-- disable word splitting
vim.opt.linebreak = true

-- set min lines from edge
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.g.mapleader = " "

-- csharp build and run

function _G.compile_and_run_csharp()
    local bufnr = vim.api.nvim_get_current_buf()
    local filepath = vim.api.nvim_buf_get_name(bufnr)
    local command = 'dotnet run ' .. filepath
    vim.api.nvim_command('vsplit | terminal ' .. command)
end

vim.api.nvim_set_keymap('n', '<leader>R', ':lua compile_and_run_csharp()<CR>', {noremap = true})
