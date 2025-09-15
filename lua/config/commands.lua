vim.cmd("syntax on")
vim.cmd.colorscheme("tokyonight")
vim.api.nvim_set_keymap("n", "<F3>", ":set paste!<CR>", { noremap = true, silent = true })
vim.api.nvim_command('command! E Ex')
