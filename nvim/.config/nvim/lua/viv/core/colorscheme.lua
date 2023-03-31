-- local valid_colorscemes = {
--   "tokyonight",
--   "darkplus",
--   "gruvbox",
--   "neosolarized",
-- }

local colorscheme = "gruvbox"

local status_ok, gruvbox = pcall(require, colorscheme)
if not status_ok then
  return
end

gruvbox.setup {
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
}
vim.cmd "colorscheme gruvbox"

--
-- local colorscheme = "neosolarized"
--
-- local status_ok, neo = pcall(require, colorscheme)
-- if not status_ok then
--   return
-- end
--
-- neo.setup {
--   comment_italics = true,
-- }
--
-- local cb = require("colorbuddy.init")
-- local Color = cb.Color
-- local colors = cb.colors
-- local Group = cb.Group
-- local groups = cb.groups
-- local styles = cb.styles
--
-- Color.new("black", "#000000")
-- Group.new("CursorLine", colors.none, colors.base03, styles.NONE, colors.base1)
-- Group.new("CursorLineNr", colors.yellow, colors.black, styles.NONE, colors.base1)
-- Group.new("Visual", colors.none, colors.base03, styles.reverse)
--
-- local cError = groups.Error.fg
-- local cInfo = groups.Information.fg
-- local cWarn = groups.Warning.fg
-- local cHint = groups.Hint.fg
--
-- Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
-- Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
-- Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
-- Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
-- Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)
