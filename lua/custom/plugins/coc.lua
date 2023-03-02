return {
   'neoclide/coc.nvim',
   branch = 'release',
   config = function()
      vim.g.coc_global_extensions = {
         'coc-snippets',
         'coc-tsserver',
         'coc-json',
         'coc-html',
         'coc-css',
         'coc-html-css-support',
         'coc-prettier',
         'coc-eslint',
         'coc-yaml',
         'coc-python',
         'coc-pyright',
         'coc-go',
         'coc-rust-analyzer',
         'coc-emmet',
         'coc-copilot',
         'coc-diagnostic',
         'coc-lightbulb',
         'coc-markmap',
         'coc-phpls', -- intelephense
         'coc-php-cs-fixer',
         'coc-ltex', -- grammar/spell checker
      }
   end
}
