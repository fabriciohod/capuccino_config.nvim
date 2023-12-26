return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = 'Append to buffers list' })
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Show buffers list' })

        vim.keymap.set("n", "<A-1>", function() harpoon:list():select(1) end, { desc = 'Go to first buffer' })
        vim.keymap.set("n", "<A-2>", function() harpoon:list():select(2) end, { desc = 'Go to seccond buffer' })
        vim.keymap.set("n", "<A-3>", function() harpoon:list():select(3) end, { desc = 'Go to third buffer' })
        vim.keymap.set("n", "<A-4>", function() harpoon:list():select(4) end, { desc = 'Go to fourth buffer' })

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = 'Previous buffer' })
        vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = 'Next buffer' })
    end
}
