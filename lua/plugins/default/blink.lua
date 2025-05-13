return {
  {
    "saghen/blink.cmp",
    version = "*",
    opts = {
      -- sources = {
      --   compat = { "avante_commands", "avante_mentions", "avante_files" },
      -- },
      keymap = {
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      },
      completion = {
        menu = { border = "single" },
        documentation = { window = { border = "single" } },
      },
      signature = { window = { border = "single" } },
    },
  },
}
