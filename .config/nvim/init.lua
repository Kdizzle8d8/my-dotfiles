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

-- Enable relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Split pane settings
vim.opt.splitbelow = true  -- Open horizontal splits below current window
vim.opt.splitright = true  -- Open vertical splits to the right of the current window

-- Keymaps for easier split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "Move to left split" })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "Move to below split" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "Move to above split" })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "Move to right split" })

-- Keymaps for splitting windows
vim.keymap.set('n', '<C-->', ':split<CR>', { desc = "Horizontal split" })
vim.keymap.set('n', '<C-\\>', ':vsplit<CR>', { desc = "Vertical split" })
-- Telescope
-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- Gruvbox theme
    {
      "ellisonleao/gruvbox.nvim",
      priority = 1000, -- Ensure it loads first
      config = function()
        vim.o.background = "dark" -- or "light" for light mode
        vim.cmd([[colorscheme gruvbox]])
      end,
    },
    -- Which-key plugin
    {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
 keys = {
	    {
	      "<leader>?",
	      function()
		require("which-key").show({ global = false })
	      end,
	      desc = "Buffer Local Keymaps (which-key)",
	    },
	  },
	},
    -- Optional: Add nvim-web-devicons for better icon support
    {
      "nvim-tree/nvim-web-devicons",
      lazy = true,
    },
    -- Add other plugins here
  },
  -- Configure any other settings here. See the documentation for more details.
  install = { colorscheme = { "gruvbox" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
},{    'nvim-telescope/telescope.nvim', tag = '0.1.8',})

-- Set Gruvbox as the default colorscheme
vim.cmd([[colorscheme gruvbox]])
