return {
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    version = "1.*",
    opts = {
      dependencies_bin = {
        ["tinymist"] = "tinymist",
      },
      -- open_cmd = "brave %s --class typst-preview",
    },
    keys = {
      { "<localleader>lp", "<cmd>TypstPreview<cr>", desc = "Open Typst Preview" },
    },
  },
}
