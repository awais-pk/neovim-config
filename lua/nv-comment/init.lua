require('nvim_comment').setup()
vim.api.nvim_set_keymap("n", "<leader>q", ":CommentToggle<CR>", {noremap=true, silent = true})
vim.api.nvim_set_keymap("v", "<leader>q", ":CommentToggle<CR>", {noremap=true, silent = true})
