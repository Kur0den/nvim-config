return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "zbirenbaum/copilot.lua" }, -- or zbirenbaum/copilot.lua
    { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
  },
  event = "VeryLazy",
  build = "make tiktoken", -- Only on MacOS or Linux
  opts = {
    -- See Configuration section for options
    model = "claude-3.7-sonnet",
    prompts = {
      JaDefault = {
        system_prompt = "日本語を使用して親しみやすく、明確な回答を提供してください。",
        Explain = "このコードが何をするか、どのように動作するかを説明してください。",
        Review = "このコードをレビューし、改善点を提案してください。",
        Fix = "このコードの問題を修正してください。",
        Optimize = "このコードを最適化してください。",
        Docs = "このコードのドキュメントコメントを生成してください。",
        Tests = "このコードのテストケースを生成してください。",
        Commit = "このコードの変更を説明するコミットメッセージをcommitizen conventionに沿って生成してください。",
      }
    },
    sticky = {
      "/JaDefault",
      "#buffer",
    }
  },
  -- See Commands section for default commands if you want to lazy load on them
}
