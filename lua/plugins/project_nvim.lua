return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "~/code/vrg/anubis/*",
      "~/code/vrg/seshat/*",
      "~/code/vrg/try_stuff/*",
      "~/code/vrg/scanner_rework/*",
      "~/code/pollywolly.io/*",
      "~/code/time_hacking/*",
      "~/code/templates/*",
      "~/.config/nvim/*",
    },
    -- Load the most recent session on startup if not in the project directory
    last_session_on_startup = true,
    silent_chdir = true, -- Change directory silently
  },
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append "globals" -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
}
