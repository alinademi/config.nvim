-- including github-nvim-theme.
-- currently the latest stable tag is v0.0.7
-- https://github.com/projekt0n/github-nvim-theme/releases/tag/v0.0.7

return {
  'projekt0n/github-nvim-theme',
  config = function()
    require('github-theme').setup({
      theme_style = "dark",
      version = "*",
      function_style = "italic",
      sidebars = { "qf", "vista_kind", "terminal", "packer" },
      colors = { hint = "orange", error = "#ff0000" },
      overrides = function(c)
        return {
          htmlTag = { fg = c.red, bg = "#111a24", sp = c.hint, style = "underline" },
          DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
          TSField = {},
        }
      end
    })
  end,
  -- Set the priority value to a higher value to ensure that the colorscheme is loaded before other plugins
  priority = 1000,
}
