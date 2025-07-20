local config = function()
  require("smartcolumn").setup({
    colorcolumn = "100",
    disabled_filetypes = { "help", "text", "markdown" },
    custom_colorcolumn = {},
    scope = "file",
    editorconfig = true,
  })
end

return {
  "m4xshen/smartcolumn.nvim",
  lazy = false,
  config = config,
}
