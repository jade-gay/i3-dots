config = function() 
  require('searchbox').setup({
    defaults = {
      show_matches = true,
      confirm = 'menu',
    }
  })
end

return {
  "VonHeikemen/searchbox.nvim",
  lazy = false,
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = config,
}
