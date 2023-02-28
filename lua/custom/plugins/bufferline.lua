return {
   'akinsho/bufferline.nvim',
   dependencies = {
      'nvim-tree/nvim-web-devicons',
   },
   config = function()
      require('bufferline').setup {
         options = {
            numbers = 'ordinal',
            number_style = { 'none', 'subscript' },
            mappings = true,
            buffer_close_icon = '',
            modified_icon = '',
            close_icon = '',
            left_trunc_marker = '',
            right_trunc_marker = '',
            max_name_length = 18,
            max_prefix_length = 15,
            tab_size = 18,
            show_tab_indicators = true,
            enforce_regular_tabs = false,
            view = 'multiwindow',
            show_buffer_close_icons = false,
            separator_style = 'thin',
            always_show_bufferline = true,
         },
      }
   end
}
