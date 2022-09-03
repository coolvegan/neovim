require 'go'.setup({
  goimport = 'gopls', -- if set to 'gopls' will use golsp format
  gofmt = 'gopls', -- if set to gopls will use golsp format
  max_line_len = 120,
  tag_transform = false,
  test_dir = '',
  comment_placeholder = '   ',
  lsp_cfg = true, -- false: use your own lspconfig
  lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
  lsp_on_attach = true, -- use on_attach from go.nvim
  dap_debug = true,
})

local protocol = require'vim.lsp.protocol'


require'lspconfig'.gopls.setup{
	capabilities = capabilities,
	on_attach = function()
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
		vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
		vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer=0})
		vim.keymap.set("n", "<leader>db", vim.diagnostic.goto_prev, {buffer=0})
		vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {buffer=0})
		vim.keymap.set("n", "<leader>rf", "<cmd>Telescope lsp_references<cr>", {buffer=0})
	end
}
