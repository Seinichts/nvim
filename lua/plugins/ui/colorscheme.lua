return {
  -- Lazy
  -- {
  --   "maxmx03/solarized.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   ---@type solarized.config
  --   opts = {},
  --   config = function(_, opts)
  --     vim.o.termguicolors = true
  --     vim.o.background = "light"
  --     require("solarized").setup(opts)
  --     vim.cmd.colorscheme("solarized")
  --   end,
  -- },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      vim.g.zenbones_darken_comments = 45
      vim.cmd.colorscheme("zenbones")
      vim.o.background = "light"
      vim.o.termguicolors = true
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      -- transparent_background = true,
    },
  },
  -- somewhere in your config:
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "zenbones",
    },
  },
}
