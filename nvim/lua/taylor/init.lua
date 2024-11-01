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
            vim.cmd("silent !garmin-clang-format -i %")            
            vim.cmd("edit")
        end,
    }
)

-- Turn on auto indentation
vim.o.autoindent = true

-- Make "p" in netrw open up vertically instead of horizontally
vim.g.netrw_preview = 1

-- Turn on spellcheck
vim.opt.spelllang = 'en_us'
vim.opt.spell = true

vim.opt.clipboard="unnamedplus"
