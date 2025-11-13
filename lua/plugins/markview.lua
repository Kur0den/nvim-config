return {
  "OXY2DEV/markview.nvim",
  lazy = false,

  -- For blink.cmp's completion
  -- source
  dependencies = {
      "saghen/blink.cmp"
  },
  opts = {
    preview = {
      icon_provider = "mini",
      enable_hybrid_mode = true,
      modes = { "no", "c" },
      hyblid_mode = {"n"},
      raw_previews = {
        markdown = {},
        markdown_inline = {},
      }
    }
  }
};
