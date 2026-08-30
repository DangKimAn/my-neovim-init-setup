-- return {
--   { "nvim-tree/nvim-web-devicons", lazy = true },
--
--   {
--     "nvim-neo-tree/neo-tree.nvim",
--     branch = "v3.x",
--     dependencies = {
--       "nvim-lua/plenary.nvim",
--       "MunifTanjim/nui.nvim",
--       "nvim-tree/nvim-web-devicons",
--     },
--     keys = {
--       { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle file explorer" },
--     },
--     -- ... các opt khác
--   },
-- }


return {
  -- Icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- Sidebar: folders and files
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   branch = "v3.x",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   keys = {
  --     { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle file explorer" },
  --   },
  --   opts = {
  --     close_if_last_window = false,
  --     filesystem = {
  --       filtered_items = {
  --         hide_dotfiles = false,
  --         hide_gitignored = false,
  --       },
  --     },
  --   },
  -- },
  --
  -- File tabs on top

{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- Cần cho các biểu tượng
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Tùy chọn, để xem trước hình ảnh
    },
    config = function()
      require("neo-tree").setup({
        -- Thêm các tùy chỉnh của bạn ở đây, ví dụ:
        close_if_last_window = false, -- Đóng tab thay vì nvim nếu là cửa sổ cuối cùng
        filesystem = {
          filtered_items = {
            hide_dotfiles = false, -- Hiển thị các file ẩn (.env, .git)
            hide_gitignored = false, -- Hiển thị các file trong .gitignore
          },
        },
        default_component_configs = {
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "",
            default = "󰈚",
          },
        },
      })
    end,
    -- Thêm các phím tắt (keymaps)
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle file explorer" },
    },
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        mode = "buffers",
        always_show_bufferline = true,
        diagnostics = "nvim_lsp",
        separator_style = "slant",
      },
    },
  },

  {
      "ibhagwan/fzf-lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      keys = {
        { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
        { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Search text" },
        { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Find buffers" },
      },
      opts = {
       "default"
      },
    },
}
