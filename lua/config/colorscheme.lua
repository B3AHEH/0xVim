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

  -- BufferLineTabxxx                  = { fg = catppuccin_colors.Green, bg = catppuccin_colors.Mantle },
  -- BufferLineTabSelectedxxx          = { fg = catppuccin_colors.Yellow, bg = catppuccin_colors.Base },
  BufferLineSeparator               = { bg = "none" },
  BufferLineDiagnosticxxx           = { fg="#74767b", bg="#0f1014" },
  BufferLineDuplicateVisiblexxx      = { fg="#93969b", bg="#121418" },
  BufferLineDuplicateSelectedxxx     = { fg="#93969b", bg="#14161b" },
  BufferLineHintDiagnosticSelectedxxx = { fg="#7ca4bf", bg="#14161b" },
  BufferLineNumbersxxx               = { fg="#9b9ea4", bg="#0f1014" },
  BufferLineHintVisiblexxx           = { fg="#9b9ea4", bg="#121418" },
  BufferLineNumbersVisiblexxx        = { fg="#9b9ea4", bg="#121418" },
  BufferLineOffsetSeparatorxxx       = { fg="#e0e2ea", bg="none" },
  BufferLineBufferSelectedxxx        = { fg="#e0e2ea", bg="#14161b" },
  BufferLineCloseButtonSelectedxxx   = { fg="#e0e2ea", bg="#14161b" },
  BufferLinePickVisiblexxx           = { fg="#ffc0b9", bg="#121418" },
  BufferLinePickSelectedxxx          = { fg="#ffc0b9", bg="#14161b" },
  BufferLineFillxxx                  = { fg="#9b9ea4", bg="none" },
  BufferLineIndicatorVisiblexxx      = { fg="#121418", bg="#121418" },
  BufferLineIndicatorSelectedxxx     = { fg="#2c2e33", bg="#14161b" },
  BufferLineTabSeparatorSelectedxxx  = { fg="none", bg="#14161b" },
  BufferLineTabSeparatorxxx          = { fg="none", bg="#0f1014" },
  BufferLineSeparatorVisiblexxx      = { fg="none", bg="#121418" },
  BufferLineSeparatorSelectedxxx     = { fg="none", bg="#14161b" },
  BufferLineDuplicatexxx             = { fg="#93969b", bg="#0f1014" },
  BufferLineBufferxxx                = { fg="#9b9ea4", bg="#0f1014" },
  BufferLineErrorxxx                 = { fg="#9b9ea4", bg="#0f1014" },
  BufferLineModifiedSelectedxxx      = { fg="#b3f6c0", bg="#14161b" },
  BufferLineModifiedVisiblexxx       = { fg="#b3f6c0", bg="#121418" },
  BufferLineErrorDiagnosticSelectedxxx = { fg="#bf908a", bg="#14161b" },
  BufferLineErrorDiagnosticVisiblexxx = { fg="#74767b", bg="#121418" },
  BufferLineErrorDiagnosticxxx       = { fg="#74767b", bg="#0f1014" },
  BufferLineErrorSelectedxxx         = { fg="#ffc0b9", bg="#14161b" },
  BufferLineErrorVisiblexxx          = { fg="#9b9ea4", bg="#121418" },
  BufferLineWarningDiagnosticSelectedxxx = { fg="#bda86f", bg="#14161b" },
  BufferLineWarningDiagnosticVisiblexxx = { fg="#74767b", bg="#121418" },
  BufferLineWarningDiagnosticxxx     = { fg="#74767b", bg="#0f1014" },
  BufferLineWarningSelectedxxx       = { link = "Primary" },
  BufferLineWarningVisiblexxx        = { fg="#9b9ea4", bg="#121418" },
  BufferLineInfoDiagnosticSelectedxxx = { fg="#69bab9", bg="#14161b" },
  BufferLineInfoDiagnosticVisiblexxx = { fg="#74767b", bg="#121418" },
  BufferLineInfoDiagnosticxxx        = { fg="#74767b", bg="#0f1014" },
  BufferLineInfoSelectedxxx          = { fg="#8cf8f7", bg="#14161b" },
  BufferLineInfoVisiblexxx           = { fg="#9b9ea4", bg="#121418" },
  BufferLineWarningxxx               = { fg="#9b9ea4", bg="#0f1014" },
  BufferLineHintDiagnosticVisiblexxx = { fg="#74767b", bg="#121418" },
  BufferLineHintDiagnosticxxx        = { fg="#74767b", bg="#0f1014" },
  BufferLineHintSelectedxxx          = { fg="#a6dbff", bg="#14161b" },
  BufferLineInfoxxx                  = { fg="#9b9ea4", bg="#0f1014" },
  BufferLineDiagnosticSelectedxxx    = { fg="#a8a9af", bg="#14161b" },
  BufferLineDiagnosticVisiblexxx     = { fg="#74767b", bg="#121418" },
  BufferLineModifiedxxx              = { fg="#b3f6c0", bg="#0f1014" },
  BufferLineNumbersSelectedxxx       = { fg="#e0e2ea", bg="#14161b" },
  BufferLineSeparatorxxx             = { bg="#11111b" },
  BufferLineBufferVisiblexxx         = { fg="#9b9ea4", bg="#121418" },
  BufferLinePickxxx                  = { fg="#ffc0b9", bg="#0f1014" },
  BufferLineCloseButtonVisiblexxx    = { fg="#9b9ea4", bg="#121418" },
  BufferLineCloseButtonxxx           = { fg="#9b9ea4", bg="#0f1014" },
  BufferLineTabClosexxx              = { fg="#9b9ea4", bg="#0f1014" },
  BufferLineGroupLabelxxx            = { fg="none", bg="#9b9ea4" },
  BufferLineGroupSeparatorxxx        = { fg="#9b9ea4", bg="none" },
  BufferLineTruncMarkerxxx           = { fg="#9b9ea4", bg="none" },
  BufferLineHintxxx                  = { fg="#9b9ea4", bg="#0f1014" },
  BufferLineBackgroundxxx            = { fg="#9b9ea4", bg="#0f1014" },

  NoiceCmdlinePopupBorder           = { link = "Primary" },
  NoiceCmdlineIcon                  = { link = "Primary" },
}

for group, hl in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, hl)
end
