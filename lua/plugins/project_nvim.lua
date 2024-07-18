return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "~/code/vrg/*",
      "~/code/vrg/anp/python/*",
      "~/code/vrg/anp/go/*",
      "~/code/pollywolly.io/*",
      "~/code/time_hacking/*",
      "~/code/templates/*",
      "~/.config/nvim/*",
    },
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append "globals" -- save global variables that start with an uppercase letter and contain at least one lowercase letter.

    -- Automatically change the workspace based on the defined project roots
    require("neovim-project").setup {
      patterns = { ".git", "Makefile", "package.json" }, -- Patterns to detect project root
      silent_chdir = true, -- Change directory silently
    }
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
}
