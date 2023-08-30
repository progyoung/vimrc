-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- Setup language servers.
vim.wo.number = true
vim.wo.relativenumber = true

-- easy motion
vim.api.nvim_set_keymap("n", ",em", ":HopWord<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", ",wo", ":only<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", ",wc", ":close<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", ",bo", ":BufOnly<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", ",ss", ":luafile ~/.config/nvim/lua/custom/init.lua<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<cr>", { silent = true, noremap = true })

vim.cmd [[
command! BufOnly %bd | e#
  ]]
