return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  opts = {
    style = "night", -- Choose between 'storm', 'night', and 'day'
    transparent = false, -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      functions = { bold = true },
      variables = {},
      sidebars = "dark", -- set darker background on sidebar-like windows.
      floats = "dark", -- set darker background on floating windows
    },
    plugins = {},
    -- Override specific colors here
    on_colors = function(colors)
      colors.info = "#e39552" -- TODO
      colors.magenta = "#f5646a" -- git accept
      colors.blue = "#f07176" -- Method name
      colors.bg = "#171821" -- Background color
      colors.bg_dark = "#1e2030" -- Darker background
      colors.bg_highlight = "#1f2130" -- Highlighted background
      colors.blue0 = "#912fc2" -- Replaced with purple
      colors.blue1 = "#f78460" -- Replaced with purple
      colors.blue2 = "#5d04c2" -- Replaced with purple
      colors.blue5 = "#d1a6f0" -- Replaced with purple
      colors.blue6 = "#e6a7f0" -- Replaced with purple
      colors.blue7 = "#6a2f6e" -- Replaced with purple
      colors.comment = "#636da6" -- Comment color
      colors.cyan = "#ffa07d" -- import variable color
      colors.dark3 = "#545c7e"
      colors.dark5 = "#737aa2"
      colors.fg = "#c8d3f5" -- Foreground color
      colors.fg_dark = "#828bb8" -- Darker foreground
      colors.fg_gutter = "#3b4261" -- Gutter foreground
      colors.green = "#ff966c" -- Replaced with orange
      colors.green1 = "#ffc085" -- Replaced with orange
      colors.green2 = "#ff9a3b" -- Replaced with orange
      colors.magenta2 = "#ff007c"
      colors.orange = "#ff966c" -- Orange color
      colors.purple = "#f76a7d" -- for, if else, ...
      colors.red = "#ff757f" -- Red color
      colors.red1 = "#c53b53"
      colors.teal = "#c53b53" -- Teal color
      colors.terminal_black = "#444a73" -- Terminal black
      colors.yellow = "#ffc777" -- Yellow color
      colors.git = {
        add = "#b8db87", -- Git add color
        change = "#7ca1f2", -- Git change color
        delete = "#e26a75", -- Git delete color
      }
    end,
  },
}
