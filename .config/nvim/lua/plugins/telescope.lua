return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local telescope = require("telescope")
        telescope.setup({
            defaults = {
                layout_strategy = "horizontal",
                layout_config = {
                    width = 0.9,
                    height = 0.9,
                    preview_width = 0.5,
                },
            },
        })
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader><space>", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
        -- Harpoon-Telescope integration
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers")
                .new({}, {
                    prompt_title = "Harpoon",
                    finder = require("telescope.finders").new_table({
                        results = file_paths,
                    }),
                    previewer = require("telescope.config").values.file_previewer({}),
                    sorter = require("telescope.config").values.generic_sorter({}),
                })
                :find()
        end
        -- We'll define the keymap for this in the Harpoon config
    end,
}
