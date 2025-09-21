return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- commit = "a1332a7925e5b3234a94480f77713d396ca895c1",
    opts = function()
      local parsers = {
        "typst",
        "bash",
        "c",
        "cpp",
        "html",
        "json",
        "lua",
        "luap",
        "markdown",
        "make",
        "markdown_inline",
        "scala",
        "python",
        "latex",
        "query",
        "toml",
        "regex",
        "vim",
        "yaml",
      }
      table.insert(parsers, "latex")
      return {
        highlight = {
          enable = true,
          disable = { "tex, latex" },
          -- additional_vim_regex_highlighting = { "markdown" },
        },
        -- ignore_install = { "latex" },
        indent = { enable = true, disable = { "python" } },
        context_commentstring = { enable = true, enable_autocmd = false },
        ensure_installed = parsers,
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<cr>",
            node_incremental = "<cr>",
            scope_incremental = "\\",
            node_decremental = "<bs>",
          },
        },
      }
    end,
    rainbow = {
      enable = true,
      -- list of languages you want to disable the plugin for
      disable = { "jsx", "cpp" },
      -- Which query to use for finding delimiters
      query = "rainbow-parens",
      -- Highlight the entire buffer all at once
    },

    keys = function()
      return {
        { "<cr>", desc = "Increment selection" },
        { "<bs>", desc = "Decrement selection", mode = "x" },
      }
    end,
  },
}
