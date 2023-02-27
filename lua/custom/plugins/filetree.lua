return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

    require('neo-tree').setup {
      git_status = {
        window = {
          position = "float",
          width = 0.3,
          height = 0.3,
          border = "rounded",
        },
      }
    }
  end,
}
