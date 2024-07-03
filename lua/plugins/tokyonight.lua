return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  opts = {
    style = "moon",  -- Choose between 'storm', 'night', and 'day'
    transparent = false, -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        sidebars = "dark", -- set darker background on sidebar-like windows.
        floats = "dark", -- set darker background on floating windows
    }
  },
}
