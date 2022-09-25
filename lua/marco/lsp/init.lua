local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "marco.lsp.configs"
require ("marco.lsp.handlers").setup()
require "marco.lsp.null-js"
require "marco.lsp.go"
