return {
   'jose-elias-alvarez/null-ls.nvim',
   dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
   },
   config = function()
      require('null-ls').setup {
         root_dir = utils.root_pattern("composer.json", "package.json", "Makefile", ".git"), -- Add composer
         diagnostics_format = "#{m} (#{c}) [#{s}]", -- Makes PHPCS errors more readeable
         sources = {
            null_ls.builtins.completion.spell, -- You still need to execute `:set spell`
            null_ls.builtins.diagnostics.eslint, -- Add eslint to js projects
            null_ls.builtins.code_actions.eslint,
            null_ls.builtins.formatting.eslint.with({
               filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact" },
            }),
            null_ls.builtins.diagnostics.phpcs.with({ -- Change how the php linting will work
               prefer_local = "vendor/bin",
            }),
            -- null_ls.builtins.formatting.stylua, -- You need to install stylua first: `brew install stylua`
            null_ls.builtins.formatting.phpcbf.with({ -- Use the local installation first
               prefer_local = "vendor/bin",
            }),
            null_ls.builtins.diagnostics.codespell,
            null_ls.builtins.formatting.prettier.with({
               filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "json", "css", "scss", "html", "vue", "yaml", "markdown" },
            }),
            null_ls.builtins.diagnostics.markdownlint,
            null_ls.builtins.formatting.markdownlint,
            null_ls.builtins.diagnostics.twigcs,


         },
      }
   end
}
