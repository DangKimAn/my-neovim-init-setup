return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = {
      presets = {
        bottom_search = false, 
        command_palette = true, -- Cấu hình đưa thanh gõ lệnh (:) ra giữa màn hình
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
      },
      cmdline = {
        view = "cmdline_popup", -- Hiển thị dạng popup nổi
      },
    },
  },
}
