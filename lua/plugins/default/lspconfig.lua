return {
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = {
      servers = {
        texlab = {
          keys = {
            { "<Leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silent = true },
          },
          settings = {
            texlab = {
              inlayHints = {
                labelDefinitions = false,
                labelReferences = false,
              },
              diagnostics = { ignoredPatterns = { "^Overfull", "^Underfull" } },
            },
          },
        },
      },
    },
  },
}
