return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      filetypes = {
        markdown = false,
      },
      auto_trigger = true,
      keymap = {
        accept = "<M-l>L",
        accept_word = "<M-l>w",
        accept_line = "<M-l>l",
      }
    }
  }
}

