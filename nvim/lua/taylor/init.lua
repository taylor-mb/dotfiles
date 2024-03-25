require("taylor.remap")
require("taylor.packer")

-- Turn on "hybrid" line numbering
vim.o.number = true
vim.o.relativenumber = true

-- Turn on auto-format on save for C/C++
vim.api.nvim_create_augroup("AutoFormat", {})
vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = {"*.c", "*.h", "*.hpp", "*.cpp"},
        group = "AutoFormat",
        callback = function()
            vim.cmd("silent !clang-format -i %")            
            vim.cmd("edit")
        end,
    }
)

-- Turn on auto indentation
vim.o.autoindent = true


