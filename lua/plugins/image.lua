if vim.fn.has("win32") == 1 then
  return {}
else
  return {
    "3rd/image.nvim",
    build = false,
    opts = {
      processor = "magick_cli",
    }
  }
end
