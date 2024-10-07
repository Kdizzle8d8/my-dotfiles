vim.keymap.set("n", "<leader>ca", '<cmd>lua require("fastaction").code_action()<CR>', { buffer = bufnr })
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

keymap("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>ws", "<C-w>s", { desc = "Split window horizontally" })
keymap("n", "<leader>we", "<C-w>=", { desc = "Make split windows equal width & height" })
keymap("n", "<leader>wx", ":close<CR>", { desc = "Close current split window" })

-- New keybindings for controlling split size
keymap("n", "<leader>w>", ":vertical resize +5<CR>", { desc = "Increase vertical split size" })
keymap("n", "<leader>w<", ":vertical resize -5<CR>", { desc = "Decrease vertical split size" })
-- Use telescope for code actions
keymap("n", "<leader>ca", '<cmd>lua require("telescope.builtin").code_actions()<CR>', { desc = "Code actions" })
-- New keybinding for opening a terminal in a bottom split
keymap("n", "<leader>wt", function()
    vim.cmd("botright split")
    vim.cmd("resize -20")
    vim.cmd("terminal")
    vim.cmd("startinsert")
end, { desc = "Open terminal in bottom split (20% height)" })
-- Set leader+ca to trigger built-in code actions
keymap("n", "<leader>ca", '<cmd>lua vim.lsp.buf.code_action()<CR>', { desc = "Code actions" })

-- Tab management (moved to its own menu)
keymap("n", "<leader>tn", ":tabnew<CR>", { desc = "Open new tab" })
keymap("n", "<leader>td", ":tabclose<CR>", { desc = "Close current tab" })
keymap("n", "<C-]> ", ":tabn<CR>", { desc = "Go to next tab" })
keymap("n", "<C-[>", ":tabp<CR>", { desc = "Go to previous tab" })
-- Use - and = for oil.nvim
vim.keymap.set("n", "<leader>-", "<cmd>Oil<CR>", { desc = "Open oil.nvim file explorer" })

keymap("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Obsidian keybindings
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create new Obsidian note" })
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open Obsidian note" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian notes" })
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show Obsidian backlinks" })
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert Obsidian template" })
vim.keymap.set("n", "<leader>of", "<cmd>ObsidianFollowLink<CR>", { desc = "Follow Obsidian link" })
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinkNew<CR>", { desc = "Create new Obsidian link" })

keymap("n", "<leader>cd", ":cd %:p:h<CR>:pwd<CR>", { noremap = true, silent = true })
-- ... add any other keymaps you want to set

-- Enable mouse support for resizing splits
vim.o.mouse = "a"
