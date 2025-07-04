return {
  "monaqa/dial.nvim",
  config = function()
    local augend = require("dial.augend")
    require("dial.config").augends:register_group{
      default = {
        augend.integer.alias.decimal_int,
        augend.integer.alias.hex,
        augend.constant.alias.bool,
        augend.date.alias["%Y-%m-%d"],
        augend.date.alias["%Y/%m/%d"],
        augend.date.alias["%Y年%-m月%-d日"],
        augend.date.alias["%m/%d"],
        augend.date.alias["%H:%M"],
        augend.date.alias.ja_weekday_full,
        -- nazeka ugokanai
        -- augend.hexcolor.new{
        --   case = "upper", -- or "lower", "prefer_upper", "prefer_lower", see below
        -- }
      }
    }
    local key = vim.keymap
    -- 提示されたキーマップの設定    augend.hexcolor.new{
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
