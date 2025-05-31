return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        keymap = {
          accept = "<M-l>L",
          accept_word = "<M-l>w",
          accept_line = "<M-l>l",
        }
      }
    })
  end,
}

