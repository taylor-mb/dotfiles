require("mason").setup()
require("lspconfig").clangd.setup({
  -- Other settings here...
  cmd = {
    -- UNCOMMENT ONE OF THE FOLLOWING TWO CLANGD EXECUTABLE PATHS BASED ON OS, THEN UPDATE THE PATH AS SPECIFIED
    "/usr/bin/clangd-12", -- LINUX; Please update <username> with your username and clangd-XX with the installed version
    -- "C:/Users/<username>/AppData/Local/nvim-data/mason/packages/clangd/clangd/bin/clangd.exe" -- WINDOWS; Please update <username> with your username
    "--query-driver=/grmn/prj/mrn/**/*", -- Prepend with drive letter (e.g. C:/) for Windows
    "--pch-storage=memory",
    "--clang-tidy",
    "--background-index",
    "--log=verbose",
  },
})
