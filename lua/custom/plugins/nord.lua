return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    enabled = true,
    priority = 1000,
    config = function()
        require 'nordic'.load()
    end
}
