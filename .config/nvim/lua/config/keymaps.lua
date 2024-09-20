local keymap = vim.keymap.set

-- Indent and maintain selection
keymap("v", ">", ">gv", { desc = "Indent right" })
keymap("v", "<", "<gv", { desc = "Indent left" })

-- Open netrw
keymap("n", "<leader>fw", ":Explore<CR>", { desc = "Open netrw" })

-- Window management
keymap("n", "<leader>wh", "<C-w>h", { desc = "Move to left split" })
keymap("n", "<leader>wj", "<C-w>j", { desc = "Move to below split" })
keymap("n", "<leader>wk", "<C-w>k", { desc = "Move to above split" })
keymap("n", "<leader>wl", "<C-w>l", { desc = "Move to right split" })

keymap("n", "<leader>w-", ":split<CR>", { desc = "Horizontal split" })
keymap("n", "<leader>w\\", ":vsplit<CR>", { desc = "Vertical split" })

keymap('n', '<leader>wv', '<C-w>v', { desc = 'Split window vertically' })
keymap('n', '<leader>ws', '<C-w>s', { desc = 'Split window horizontally' })
keymap('n', '<leader>we', '<C-w>=', { desc = 'Make split windows equal width & height' })
keymap('n', '<leader>wx', ':close<CR>', { desc = 'Close current split window' })

-- Tab management (moved to its own menu)
keymap('n', '<leader>to', ':tabnew<CR>', { desc = 'Open new tab' })
keymap('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close current tab' })
keymap('n', '<leader>tn', ':tabn<CR>', { desc = 'Go to next tab' })
keymap('n', '<leader>tp', ':tabp<CR>', { desc = 'Go to previous tab' })

-- ... add any other keymaps you want to set