return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>lw"] = { "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>e"] = { "<cmd>Oil<cr>", desc = "Oil" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        e = {},
      },
    },
    init = function() end,
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          gr = {
            function() require("telescope.builtin").lsp_references() end,
            desc = "Declaration search",
          },
        },
      },
    },
  },
}
