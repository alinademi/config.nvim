return {
   require("telescope").setup {
      defaults = {

      },
      extensions = {
         file_browser = {
            theme = "ivy",
            deptth = 3,
            hijack_netrw = true,
            hidden = true,
            mappings = {
               ["i"] = {
                  -- your custom insert mode mappings
               },
               ["n"] = {
                  -- your custom normal mode mappings
               },
            },
         },
      },
   },
}
