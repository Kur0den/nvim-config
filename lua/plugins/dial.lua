return {
  "monaqa/dial.nvim",
    config = function()
      local key = vim.keymap
    -- 提示されたキーマップの設定
    key.set("n", "<C-a>", function()
      require("dial.map").manipulate("increment", "normal")
    end, { silent = true }) 
    key.set("n", "<C-x>", function()
      require("dial.map").manipulate("decrement", "normal")
    end, { silent = true })
    key.set("n", "g<C-a>", function()
      require("dial.map").manipulate("increment", "gnormal")
    end, { silent = true })
    key.set("n", "g<C-x>", function()
      require("dial.map").manipulate("decrement", "gnormal")
    end, { silent = true })
    key.set("v", "<C-a>", function()
      require("dial.map").manipulate("increment", "visual")
    end, { silent = true })
    key.set("v", "<C-x>", function()
      require("dial.map").manipulate("decrement", "visual")
    end, { silent = true })
    key.set("v", "g<C-a>", function()
      require("dial.map").manipulate("increment", "gvisual")
    end, { silent = true })
    key.set("v", "g<C-x>", function()
      require("dial.map").manipulate("decrement", "gvisual")
    end, { silent = true })

  end,
}
