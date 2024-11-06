vim.cmd("syntax on")
vim.cmd("colorscheme blue")

vim.api.nvim_set_keymap("n", "<F3>", ":set paste!<CR>", { noremap = true, silent = true })
