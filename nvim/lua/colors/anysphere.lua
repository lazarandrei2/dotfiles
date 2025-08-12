local M = {}

M.colors = {
  bg = "#141414",
  fg = "#ffffff",
  red = "#bf616a",        -- color1
  green = "#a3be8c",      -- color2
  yellow = "#ebcb8b",     -- color3
  blue = "#81a1c1",       -- color4
  magenta = "#b48ead",    -- color5
  cyan = "#88c0d0",       -- color6
  black = "#2a2a2a",      -- color7
  white = "#ffffff",      -- color8
  bright_black = "#505050", -- color9
  comment = "#999999",
  selection = "#636262",
  cursorline = "#292929", -- color10
  gutter = "#1a1a1a",     -- color11
  color12 = "#e394dc",    -- extra highlight color
  color13 = "#aa9bf5",    -- additional accent
  color14 = "#efb080",    -- extra orange
  color15 = "#d6d6dd",    -- gray-white
}

function M.setup()
  local c = M.colors

  vim.cmd("highlight clear")
  vim.o.background = "dark"
  -- vim.o.termguicolors = true

  -- Basic UI
  vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.bg })
  vim.api.nvim_set_hl(0, "Visual", { bg = c.selection })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = c.cursorline })
  vim.api.nvim_set_hl(0, "LineNr", { fg = c.bright_black, bg = c.gutter })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.fg, bg = c.gutter })

  -- Syntax
  vim.api.nvim_set_hl(0, "Comment", { fg = c.comment, italic = true })
  vim.api.nvim_set_hl(0, "String", { fg = c.color12 })
  vim.api.nvim_set_hl(0, "Function", { fg = c.color14, bold = true })
  vim.api.nvim_set_hl(0, "Identifier", { fg = c.color13 })
  vim.api.nvim_set_hl(0, "Statement", { fg = c.cyan })
  vim.api.nvim_set_hl(0, "Type", { fg = c.color14 })
  vim.api.nvim_set_hl(0, "Number", { fg = c.yellow })
  vim.api.nvim_set_hl(0, "Operator", { fg = c.color15 })

  -- Tree-sitter highlights
  vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
  vim.api.nvim_set_hl(0, "@function", { link = "Function" })
  vim.api.nvim_set_hl(0, "@keyword", { link = "Statement" })
  vim.api.nvim_set_hl(0, "@type", { link = "Type" })
  vim.api.nvim_set_hl(0, "@string", { link = "String" })
  vim.api.nvim_set_hl(0, "@number", { link = "Number" })
  vim.api.nvim_set_hl(0, "@variable", { link = "Identifier" })
  vim.api.nvim_set_hl(0, "@operator", { link = "Operator" })
end

function M.get_lualine_theme()
  local colors = {
    color1  = M.colors.red,
    color2  = M.colors.green,
    color3  = M.colors.yellow,
    color4  = M.colors.blue,
    color5  = M.colors.magenta,
    color6  = M.colors.cyan,
    color7  = M.colors.black,
    color8  = M.colors.white,
    color9  = M.colors.bright_black,
    color10 = M.colors.cursorline,
    color11 = M.colors.gutter,
    color12 = M.colors.color12,
    color13 = M.colors.color13,
    color14 = M.colors.color14,
    color15 = M.colors.color15,
  }

  return {
    normal = {
      a = { fg = colors.color2, bg = colors.color10, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
      c = { fg = colors.color9, bg = colors.color2 },
    },
    insert = {
      a = { fg = colors.color2, bg = colors.color13, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
    },
    visual = {
      a = { fg = colors.color2, bg = colors.color3, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
    },
    replace = {
      a = { fg = colors.color2, bg = colors.color8, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
    },
    command = {
      a = { fg = colors.color2, bg = colors.color1, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
    },
    inactive = {
      a = { fg = colors.color4, bg = colors.color5, gui = 'bold' },
      b = { fg = colors.color4, bg = colors.color5 },
      c = { fg = colors.color4, bg = colors.color2 },
    },
  }
end

return M
