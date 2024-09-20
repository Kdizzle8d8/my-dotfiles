return {
    "mbbill/undotree",
    keys = {
        { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
    },
    config = function()
        vim.g.undotree_WindowLayout = 2 -- Set the layout of the undotree window
        vim.g.undotree_SetFocusWhenToggle = 1 -- Focus on the undotree window when toggled
    end,
}
