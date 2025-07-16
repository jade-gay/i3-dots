config = function()
  require('autoclose').setup({
    options = {
      pair_spaces = true,
    }
  })
end

return {
  "m4xshen/autoclose.nvim",
  lazy = false,
  config = config,
}
