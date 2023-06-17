-- including github-nvim-theme.
-- currently the latest stable tag is v0.0.7
-- https://github.com/projekt0n/github-nvim-theme/releases/tag/v0.0.7

return {
  'projekt0n/github-nvim-theme',
  config = function()
    -- Example config in Lua
    require('github-theme').setup({
      options = {
        transparent = false,
        hide_end_of_buffer = true,
        hide_nc_statusline = true,
        styles = {
          comments = 'Italic',
          functions = 'NONE',
          keywords = 'Bold',
          variables = 'Underline',
        },
        darken = {
          floats = true,
          sidebars = {
            enable = true,
            list = { 'qf', 'vista_kind', 'terminal', 'packer' },
          },
        },
      },
      palettes = {
        github_dark = {
          bg = "#111a24",
          hint = "orange",
          error = "#ff0000",
          syntax = {
            comment = '#5b6aa0',
            constant = '#79c0ff',
            string = '#a5d6ff',
            variable = '#C9D1D9',
            keyword = '#ED8B84',
            func = '#d2a8ff',
            func_param = '#C9D1D9',
            match_paren_bg = '#105357',
            tag = '#7ee787',
            html_arg = '#ff7b72',
            param = '#C9D1D9',
            json_label = '#79c0ff',
          },
        },
      },
      -- Overwrite the highlight groups
      -- @Todo: overrides is deprecated, use `groups` instead
      -- https://github.com/projekt0n/github-nvim-theme/discussions/198#discussioncomment-5700014
      -- overrides = function(c)
      --   return {
      --     htmlTag = { fg = c.red, bg = '#282c34', sp = c.hint, style = 'underline' },
      --     DiagnosticHint = { link = 'LspDiagnosticsDefaultHint' },
      --     -- this will remove the highlight groups
      --     TSField = {},
      --   }
      -- end,
    })

    vim.cmd('colorscheme github_dark_tritanopia')
  end,
  -- Set the priority value to a higher value to ensure that the colorscheme is loaded before other plugins
  priority = 1000,
  enabled = true,
}
