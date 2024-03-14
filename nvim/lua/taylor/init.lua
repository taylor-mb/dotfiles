require("taylor.remap")
require("taylor.packer")

-- Turn on "hybrid" line numbering
vim.o.number = true
vim.o.relativenumber = true

vim.api.nvim_create_augroup("AutoFormat", {})
vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = "*.cpp",
        group = "AutoFormat",
        callback = function()
            vim.cmd("silent !clang-format -i %")            
            vim.cmd("edit")
        end,
    }
)
