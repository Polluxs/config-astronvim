return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- next buffer (currently only have previous buffer)
          ["<Leader>bn"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
          ["<Leader>lw"] = { "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
          -- override tree with oil
          ["<Leader>e"] = { "<cmd>Oil<cr>", desc = "Oil" },

          -- find projects
          ["<Leader>fp"] = { "<cmd>Telescope neovim-project discover<cr>", desc = "Find Project" },
          ["<Leader>fP"] = { "<cmd>Telescope neovim-project history<cr>", desc = "Find previous projects" },

          -- Diffview file history
          ["<Leader>gh"] = { "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
          ["<Leader>gH"] = { "<cmd>DiffviewFileHistory<cr>", desc = "Branch History" },

          -- Dadbod mappings (using `m` for database commands)
          ["<Leader>mf"] = { "<cmd>DBUI<cr>", desc = "Open DBUI" },
          ["<Leader>mq"] = { "<cmd>DBUIQuery<cr>", desc = "Run DB Query" },
          ["<Leader>ms"] = { "<cmd>DBUIShow<cr>", desc = "Show DB Schema" },
          ["<Leader>ml"] = { "<cmd>DBUILastQuery<cr>", desc = "Show Last Query" },
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
