return {
  {
    "lervag/vimtex",
    lazy = false, -- lazy-loading will disable inverse search
    init = function()
      vim.g.vimtex_syntax_conceal_disable = 1
      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_view_method = "skim"
      -- vim.g.vimtex_view_general_viewer = "open -a UPDF"
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_compiler_silent = 1
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = "./aux",
        out_dir = "",
        callback = 1,
        continuous = 1,
        executable = "latexmk",
        hooks = {},
        options = {
          -- "-c",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
          "--shell-escape",
        },
      }
      vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull",
        "Overfull",
        "specifier changed to",
        "Token not allowed in a PDF string",
        "LaTeX Warning: Float too large for page",
        "contains only floats",
      }
    end,
  },
  {
    "evesdropper/luasnip-latex-snippets.nvim",
    enabled = false,
  },
}
