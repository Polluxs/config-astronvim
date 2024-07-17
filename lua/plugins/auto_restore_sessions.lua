return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      -- disable alpha autostart
      alpha_autostart = false,
      restore_session = {
        {
          event = "VimEnter",
          desc = "Restore previous directory session if neovim opened with no arguments",
          nested = true, -- trigger other autocommands as buffers open
          callback = function()
            local args = vim.fn.argv()
            local cwd = vim.fn.getcwd()
            -- Log the current working directory
            vim.notify("Current working directory: " .. cwd, vim.log.levels.INFO)
            -- Also print to :messages log
            print("Current working directory: " .. cwd) -- Check if nvim was started with no args or with '.'
            if #args == 0 or (args[1] == ".") then
              require("resession").load(cwd, { dir = "dirsession", silence_errors = true })
            end
          end,
        },
      },
    },
  },
}
