require("ljupcho.plugins-setup")
require("ljupcho.core.options")
require("ljupcho.core.keymaps")
require("ljupcho.core.colorscheme")
require("ljupcho.plugins.comment")
require("ljupcho.plugins.nvim-tree")
require("ljupcho.plugins.lualine")
require("ljupcho.plugins.telescope")
require("ljupcho.plugins.nvim-cmp")
require("ljupcho.plugins.lsp.mason")
require("ljupcho.plugins.lsp.lspsaga")
require("ljupcho.plugins.lsp.lspconfig")
require("ljupcho.plugins.lsp.null-ls")
require("ljupcho.plugins.autopairs")
require("ljupcho.plugins.treesitter")
require("ljupcho.plugins.gitsigns")

local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    require("go.format").goimport()
  end,
  group = format_sync_grp,
})
