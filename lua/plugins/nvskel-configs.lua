return {
    -- "shaneyost/nvim-skel.nvim",
    dir = "~/repos/nvim-skel.nvim",
    dev = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local tablegen = require("nvim-skel")
        tablegen.setup({
        })
    end,
}
