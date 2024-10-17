-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/coloscheme.lua
--   This is a file for coloscheme configuration
-- ╚══════════════════════════════════════════════════════════════╝

local catppuccin_colors = {
  Rosewater                         = "#f5e0dc",
  Flamingo                          = "#f2cdcd",
  Pink                              = "#f5c2e7",
  Mauve                             = "#cba6f7",
  Red                               = "#f38ba8",
  Maroon                            = "#eba0ac",
  Peach                             = "#fab387",
  Yellow                            = "#f9e2af",
  Green                             = "#a6e3a1",
  Teal                              = "#94e2d5",
  Sky                               = "#89dceb",
  Sapphire                          = "#74c7ec",
  Blue                              = "#89b4fa",
  Lavender                          = "#b4befe",
  Text                              = "#cdd6f4",
  Subtext_1                         = "#bac2de",
  Subtext_0                         = "#a6adc8",
  Overlay_2                         = "#9399b2",
  Overlay_1                         = "#7f849c",
  Overlay_0                         = "#6c7086",
  Surface_2                         = "#585b70",
  Surface_1                         = "#45475a",
  Surface_0                         = "#313244",
  Base                              = "#1e1e2e",
  Mantle                            = "#181825",
  Crust                             = "#11111b",
}

local highlights = {
  Primary                           = { fg = catppuccin_colors.Green },

  Title                             = { link = "Primary" },
  FloatBorder                       = { link = "Primary", bold = true },

  NvimTreeFolderIcon                = { link = "Primary" },
  NvimTreeFolderName                = { fg = catppuccin_colors.Subtext_0 },
  NvimTreeOpenedFolderName          = { fg = catppuccin_colors.Text, bold = true },

  DashboardHeader                   = { link = "Primary", bold = true },
  DashboardFooter                   = { fg = catppuccin_colors.Overlay_0 },

  BufferLineTabxxx                  = { fg = catppuccin_colors.Overlay_0, bg = catppuccin_colors.Mantle },
  BufferLineTabSelectedxxx          = { fg = catppuccin_colors.Overlay_2, bg = catppuccin_colors.Base },
  BufferLineSeparator               = { bg = catppuccin_colors.Crust },

  NoiceCmdlinePopupBorder           = { link = "Primary" },
  NoiceCmdlineIcon                  = { link = "Primary" },
}

for group, hl in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, hl)
end
