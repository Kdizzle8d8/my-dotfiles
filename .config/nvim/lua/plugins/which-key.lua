return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        plugins = {
            marks = true,
            registers = true,
            spelling = {
                enabled = true,
                suggestions = 20,
            },
            presets = {
                operators = true,
                motions = true,
                text_objects = true,
                windows = true,
                nav = true,
                z = true,
                g = true,
            },
        },
        layout = {
            height = { min = 4, max = 25 },
            width = { min = 20, max = 50 },
            spacing = 3,
            align = "left",
        },
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)
        wk.add({
            { "<leader>c",       group = "Code" },
            { "<C-->",           ":split<CR>",                   desc = "Horizontal split" },
            { "<C-\\>",          ":vsplit<CR>",                  desc = "Vertical split" },
            { "<C-h>",           "<C-w>h",                       desc = "Move to left split" },
            { "<C-j>",           "<C-w>j",                       desc = "Move to below split" },
            { "<C-k>",           "<C-w>k",                       desc = "Move to above split" },
            { "<C-l>",           "<C-w>l",                       desc = "Move to right split" },
            { "<leader>f",       group = "Find" },
            { "<leader><space>", group = "Find" },
            { "<leader>f_",      hidden = true },
            { "<leader>fg",      "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
            { "<leader>fb",      "<cmd>Telescope buffers<cr>",   desc = "Buffers" },
            { "<leader>fh",      "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
            { "<leader>w",       group = "Window" },
            { "<leader>t",       group = "Tab" },

            -- Window management
            { "<leader>wh",      "<C-w>h",                       desc = "Move to left split" },
            { "<leader>wj",      "<C-w>j",                       desc = "Move to below split" },
            { "<leader>wk",      "<C-w>k",                       desc = "Move to above split" },
            { "<leader>wl",      "<C-w>l",                       desc = "Move to right split" },
            { "<leader>w-",      ":split<CR>",                   desc = "Horizontal split" },
            { "<leader>w\\",     ":vsplit<CR>",                  desc = "Vertical split" },
            { "<leader>wv",      "<C-w>v",                       desc = "Split window vertically" },
            { "<leader>ws",      "<C-w>s",                       desc = "Split window horizontally" },
            { "<leader>we",      "<C-w>=",                       desc = "Make split windows equal width & height" },
            { "<leader>wx",      ":close<CR>",                   desc = "Close current split window" },

            -- Tab management
            { "<leader>to",      ":tabnew<CR>",                  desc = "Open new tab" },
            { "<leader>tx",      ":tabclose<CR>",                desc = "Close current tab" },
            { "<leader>tn",      ":tabn<CR>",                    desc = "Go to next tab" },
            { "<leader>tp",      ":tabp<CR>",                    desc = "Go to previous tab" },
        })
    end,
}
