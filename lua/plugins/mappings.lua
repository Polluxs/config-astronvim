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

          -- Extend NeoTest
          ["<leader>tl"] = {
            function() require("neotest").run.run_last { strategy = "dap" } end,
            desc = "Debug last test",
          },

          -- ChatGPT mappings
          ["<Leader>c"] = { "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
          ["<Leader>ce"] = { "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction" },
          ["<Leader>cg"] = { "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
          ["<Leader>ct"] = { "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
          ["<Leader>ck"] = { "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
          ["<Leader>cd"] = { "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
          ["<Leader>ca"] = { "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
          ["<Leader>co"] = { "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
          ["<Leader>cs"] = { "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
          ["<Leader>cf"] = { "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
          ["<Leader>cx"] = { "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
          ["<Leader>cr"] = { "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
          ["<Leader>cl"] = { "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
          ["<F6>"] = {
            function()
              local chat_window_open = vim.fn.winnr "$" > 1 -- Check if more than one window is open
              if chat_window_open then
                vim.cmd "ChatGPT" -- Close the ChatGPT window (only works in selection mode)
              else
                vim.cmd "ChatGPT" -- Open the ChatGPT window
              end
            end,
            desc = "Toggle ChatGPT",
          },
        },
        x = {
          ["<leader>re"] = { ":Refactor extract<cr>", desc = "Extract Function" },
          ["<leader>rf"] = { ":Refactor extract_to_file<cr>", desc = "Extract Function To File" },
          ["<leader>rv"] = { ":Refactor extract_var<cr>", desc = "Extract Variable" },
          ["<leader>ri"] = { ":Refactor inline_var<cr>", desc = "Inline Variable" },
          ["<leader>rr"] = {
            function() require("telescope").extensions.refactoring.refactors() end,
            desc = "Refactoring options",
          },
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
