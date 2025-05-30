print("loading lualine...")

local lualine = require("lualine")
local codedark = require'lualine.themes.codedark'

lualine.setup {
      options = {
        icons_enabled = true,
        theme = codedark,
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
      },
      extensions = { 'nvim-tree' },
}
return{}