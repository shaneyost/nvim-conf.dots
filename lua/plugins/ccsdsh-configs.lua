return {
    -- "shaneyost/ccsds-hdr.nvim",
    dir = "~/repos/ccsds-hdr.nvim",
    dev = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local ccsds = require("ccsds-hdr")
        vim.keymap.set("n", "<leader>ce", ccsds.parser.animate_encode, {
            noremap = true,
            silent = true,
            desc = "ccsds-hdr encode",
        })
        vim.keymap.set("n", "<leader>cd", ccsds.parser.animate_decode, {
            noremap = true,
            silent = true,
            desc = "ccsds-hdr decode",
        })
        vim.keymap.set("n", "<leader>co", ccsds.ui.open, {
            noremap = true,
            silent = true,
            desc = "ccsds-hdr open",
        })
        vim.keymap.set("n", "<leader>cn", ccsds.ui.swap, {
            noremap = true,
            silent = true,
            desc = "ccsds-hdr next",
        })
        vim.keymap.set("n", "<leader>cc", ccsds.ui.close, {
            noremap = true,
            silent = true,
            desc = "ccsds-hdr close",
        })
        ccsds.setup({
        -- Title of the Encoder window (shows up in top center)
        encoder_title = "Encoded",
        -- Title of the Decoder window (shows up in top center)
        decoder_title = "Decoded",
        -- Highlights applied for bytes/fields updated after decoding/encoding
        hl_update_color = { fg = "#2E3440", bg = "#88C0D0", bold = false },
        -- Highlights applied for bytes/fields that are invalid after decoding/encoding
        hl_errors_color = { fg = "#2E3440", bg = "#D08770", bold = false },
        -- Highlights applied for bytes/fields overall
        hl_normal_color = { fg = "#D8DEE9", bg = "#2E3440", bold = false },
        -- Highlights applied for all borders of encoder/decoder windows
        hl_border_color = { fg = "#88C0D0", bold = false },
        })
    end,
}
