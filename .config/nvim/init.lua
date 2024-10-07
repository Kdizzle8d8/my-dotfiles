-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- Set GUI font (for Neovide, VimR, etc.)
vim.o.guifont = "CaskaydiaCove Nerd Font:h15"
-- Enable relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true
-- Indent and maintain selection
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
-- Split pane settings
vim.opt.splitbelow = true -- Open horizontal splits below current window
vim.opt.splitright = true -- Open vertical splits to the right of the current window

-- Open netrw
vim.keymap.set("n", "<leader>fw", function()
	require("oil").open()
end, { desc = "Open oil.nvim file explorer" })

-- Keymaps for easier split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- Keymaps for splitting windows
vim.keymap.set("n", "<C-->", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<C-\\>", ":vsplit<CR>", { desc = "Vertical split" })
-- formatting
-- Indentation settings
vim.opt.tabstop = 4      -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4   -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.softtabstop = 4  -- Number of spaces that a <Tab> counts for while performing editing operations

-- Setup lazy.nvim
require("lazy").setup("plugins", {
	install = { colorscheme = { "gruvbox" } },
	checker = { enabled = true }, -- automatically check for plugin updates
})

-- Add oil.nvim configuration
require("oil").setup()

-- Set Gruvbox as the default colorscheme
vim.cmd([[colorscheme catppuccin]])

-- Setup formatting keybinding
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client.supports_method("textDocument/formatting") then
			vim.keymap.set("n", "<leader>cf", function()
				vim.lsp.buf.format({ bufnr = bufnr, async = true })
			end, { buffer = bufnr, desc = "Format buffer" })
		end
	end,
})

-- Load options
require("config.options")

-- Load keymaps
require("config.keymaps")
