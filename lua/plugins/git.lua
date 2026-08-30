return {
  -- Gitsigns: Hiển thị trạng thái git bên lề trái
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      current_line_blame = true, -- Bật hiển thị git blame mờ ở cuối dòng
      current_line_blame_opts = {
        delay = 500, -- Hiện blame sau 0.5 giây
      },
    },
    keys = {
      { "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Preview Git Hunk" },
      { "<leader>hb", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle Git Blame" },
    },
  },

  -- Lazygit: Giao diện quản lý Git tổng thể
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "Mở LazyGit" },
    },
  },
}
