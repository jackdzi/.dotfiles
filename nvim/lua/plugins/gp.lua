return {
  "robitx/gp.nvim",
  lazy = false,
    config = function()
      local conf = {
        openai_api_key = { "bash", "-c", "cat ~/.keys/gpt.txt" },
        agents = {
          {
            name =  'ChatGPT1o-Preview',
            chat = true,
            command = false,
            model = {model = 'o1-preview', temperature = 1.1, top_p = 1},
            system_prompt = require('gp.defaults').chat_system_prompt,
          },
        },
        chat_shortcut_respond = { modes = { "n", "i", "v", "x" }, shortcut = "<C-g><C-g>" },
	      chat_shortcut_delete = { modes = { "n", "i", "v", "x" }, shortcut = "<C-g>d" },
	      chat_shortcut_stop = { modes = { "n", "i", "v", "x" }, shortcut = "<C-g>s" },
	      chat_shortcut_new = { modes = { "n", "i", "v", "x" }, shortcut = "<C-g>c" },
            -- For customization, refer to Install > Configuration in the Documentation/Readme
      }
      require("gp").setup(conf)


        -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
    end,
}
