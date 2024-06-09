return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "svelte", -- make sure you have svelte in the list
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        svelte = {}, -- add svelte LSP
      },
    },
  },
}
