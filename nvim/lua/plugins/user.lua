return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.sources = { "filesystem" }
      opts.source_selector = nil
      opts.window.position = "left"
      opts.window.mappings.o = false
      opts.window.mappings.C = "set_root"
      opts.window.mappings["/"] = "find_in_dir"
      -- opts.filesystem.hijack_netrw_behavior = "open_default"
      opts.filesystem.filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      }
      opts.popup_border_style = "rounded"
      opts.enable_git_status = false
      opts.enable_diagnostics = false
      return opts
    end,
  },
  {
    "kawre/leetcode.nvim",
    cmd = "Leet",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- configuration goes here
      ---@type string
      arg = "leetcode.nvim",

      ---@type lc.lang
      lang = "rust",

      cn = { -- leetcode.cn
        enabled = true, ---@type boolean
        translator = true, ---@type boolean
        translate_problems = true, ---@type boolean
      },

      ---@type lc.storage
      storage = {
        home = vim.env.HOME .. "/Workspaces/rustal/src",
        cache = vim.fn.stdpath "cache" .. "/leetcode",
      },
    },
  },
  {
    "goolord/alpha-nvim",
    enabled = false,
  },
  {
    "AstroNvim/astrotheme",
    enabled = false,
  },
  {
    "max397574/better-escape.nvim",
    enabled = false,
  },
  {
    "rcarriga/nvim-notify",
    enabled = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
        height = 0.8,
      },
    },
  },
}
