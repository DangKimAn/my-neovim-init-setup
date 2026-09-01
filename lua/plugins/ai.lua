return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", 
    },
    opts = {
display = {
        chat = {
          window = {
            position = "right",
            width = 40,
          },
        },
      },

      strategies = {
        chat = {
          adapter = "gemini", -- Đổi thành "openai" hoặc "anthropic" tùy ý
        },
        inline = {
          adapter = "gemini",
        },
      },
    },
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "AI Actions" },
      { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", mode = { "n", "v" }, desc = "AI Chat" },
      { "<leader>ai", "<cmd>CodeCompanion<cr>", mode = "n", desc = "AI Inline Prompt" },
    },
  }
}
