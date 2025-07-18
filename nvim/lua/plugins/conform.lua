local config = function()
  local conform = require("conform")
  conform.setup({
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      markdown = { "prettier" },
      lua = { "stylua" },
      python = { "isort", "black" },
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 250,
    },
  })

  vim.keymap.set({ "n", "v" }, "<leader>mp", function()
    conform.format({
      lsp_fallback = true,
      async = false,
      timeout_msg = 250,
    })
  end, { desc = "format file or range in (in visual mode)" })
end

return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = config,
}
