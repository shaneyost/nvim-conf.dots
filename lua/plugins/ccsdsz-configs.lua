return {
    -- "shaneyost/ccsds-zen.nvim",
    dir = "~/repos/ccsds-zen.nvim",
    dev = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local ccsds = require("ccsds-zen")
        ccsds.setup({})
    end,
}
