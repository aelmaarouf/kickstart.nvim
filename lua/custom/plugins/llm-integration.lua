return {
  {
    'yetone/avante.nvim',
    event = 'VeryLazy',
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- provider Ollama
      provider = 'ollama',
      providers = {
        ollama = {
          api_key_name = 'OLLAMA_TOKEN',
          endpoint = 'https://europe-west1-arkeup-ai-gen-lab.cloudfunctions.net/use-ollama-multi',
          model = 'gemma3:4b',
        },
        -- custom provider Ollama
        behaviour = {
          --- ... existing behaviours
          enable_cursor_planning_mode = true, -- enable cursor planning mode!
        },
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = 'make',
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      --- The below dependencies are optional,
      'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    },
  },
}
