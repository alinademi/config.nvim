return {
   { -- Set lualine as statusline
      'nvim-lualine/lualine.nvim',
      -- See `:help lualine.txt`
      opts = {
         options = {
            icons_enabled = false,
            theme = 'iceberg_dark',
            component_separators = '|',
            section_separators = '',
         },
      },
   }
}
