return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup {
      api_key_cmd = "gopass show -o -n /vrg/chatgpt-legacy",
      openai_params = {
        max_tokens = 16000,
        model = "gpt-4o-mini",
        frequency_penalty = 0, -- allow it to repeat itself (0 = no penalty)
        presence_penalty = 0, -- allow it to talk about new topic (0 = no penality to talk about new subjects)
        temperature = 0.2,
        top_p = 0.1, -- top_p = 0.1 means the model only considers the top 10% of possible word choices. Lower values make the responses more focused and deterministic.
        n = 1, -- amount of responses (only 1)
      },
    }
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
