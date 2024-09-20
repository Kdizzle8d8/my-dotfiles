return {
    "easymotion/vim-easymotion",
    keys = {
        { "S", "<Plug>(easymotion-prefix)", mode = "n", desc = "EasyMotion Prefix", noremap = true },
        { "s", "<Plug>(easymotion-s)",      mode = "n", desc = "EasyMotion search", noremap = true },
    },
    config = function()
        -- Turn on case-insensitive feature
        vim.g.EasyMotion_smartcase = 1
        -- Enable use of Neovim's own highlights
        vim.g.EasyMotion_use_upper = 1
        vim.g.EasyMotion_keys = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ;,[]"
        -- Customize EasyMotion colors
        vim.api.nvim_set_hl(0, "EasyMotionTarget", { link = "ErrorMsg" })
        vim.api.nvim_set_hl(0, "EasyMotionShade", { link = "Comment" })
        vim.api.nvim_set_hl(0, "EasyMotionTarget2First", { link = "MatchParen" })
        vim.api.nvim_set_hl(0, "EasyMotionTarget2Second", { link = "MatchParen" })
    end,
}
