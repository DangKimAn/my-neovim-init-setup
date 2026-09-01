
return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, 
  opts = {
    provider = "gemini", 
    
    -- Cấu hình mới: Đưa gemini vào bên trong providers
    providers = {
      gemini = {
        model = "gemini-1.5-pro-latest", 
      },
    },
    
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = { insert_mode = true },
        },
      },
    },
  },
}
