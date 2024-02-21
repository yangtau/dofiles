return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.sources = { "filesystem" }
      opts.source_selector = nil
      opts.window.position = "left"
      opts.window.mappings.o = false
      opts.window.mappings.C = "set_root"
      opts.filesystem.hijack_netrw_behavior = "open_default"
      opts.filesystem.filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      }
      return opts
    end,
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"
      local hl = require "astronvim.utils.status.hl"
      opts.statusline = {
        hl = { fg = "fg", bg = "bg" },
        status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
        status.component.file_info {
          file_icon = { hl = hl.file_icon "statusline", padding = { left = 0, right = 1 } }
        },
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.lsp(),
        status.component.nav { scrollbar = false },
      }
      -- opts.winbar = nil
      -- opts.statuscolumn = nil
      return opts
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
