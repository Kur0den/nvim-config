return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = false,
      -- auto_trigger = false,
      keymap = {
        accept = "<M-l>L",
        accept_word = "<M-l>w",
        accept_line = "<M-l>l",
      },
    },
    panel = { enabled = false },
    filetypes = {
      markdown = false,
      help = true,
    }
  }
}

