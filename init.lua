local configurationsetup = "marco"
local configurations = {"options", "keymaps", "plugins", "colorscheme", "cmp", "lsp", "telescope", "nvim-tree", "treesitter", "toggleterm", "project",
"lualine", "indentline", "impatient", "illuminate", "gitsigns", "comment",  "autopairs", "bufferline"}
for _, configuration in pairs(configurations) do
  require(configurationsetup.."."..configuration)
end

