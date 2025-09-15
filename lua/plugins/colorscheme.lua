return {
  -- Tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm", -- storm, night, moon, day
    },
  },

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
    },
  },

  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      contrast = "hard", -- can be "soft", "medium", or "hard"
    },
  },

  -- Dracula
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    -- Dracula doesn’t have styles, but you could still pass options:
    opts = {
      transparent_bg = true,
    },
  },

  -- Onedark
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "cool", -- dark, darker, cool, warm, deep
    },
  },
}

