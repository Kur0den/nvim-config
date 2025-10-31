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
    system_prompt = "日本語を使用して親しみやすく、明確な回答を提供してください。",
    model = "claude-3.5-sonnet",
    show_help = "yes",
    prompts = {
      Explain = {
        prompt = "このコードが何をするか、どのように動作するかを説明してください。",
        description = "コードの説明をお願いする"
      },
      Review = {
        prompt = "このコードをレビューし、改善点を提案してください。",
        description = "コードのレビューをお願いする"
      },
      Fix = {
        prompt = "このコードの問題を修正してください。",
        description = "コードの修正をお願いする"
      },
      Optimize = {
        prompt = "このコードを最適化してください。",
        description = "コードの最適化をお願いする"
      },
      Tests = {
        prompt = "このコードのドキュメントコメントを生成してください。",
        description = "コードのドキュメント生成をお願いする"
      },
      Tests = {
        prompt = "このコードのテストケースを生成してください。",
        description = "コードのテストケース生成をお願いする"
      },
      Commit = {
        prompt = "ステージ済みの変更を説明するコミットメッセージをConventional Commitsに沿って日本語で生成してください。",
        description = "コミットメッセージの作成をお願いする",
        context = "git:staged"
      }
    },
    sticky = {
      "#buffer",
    }
  },
}
