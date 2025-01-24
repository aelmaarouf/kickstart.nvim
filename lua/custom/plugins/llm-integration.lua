return {
  {
    'yetone/avante.nvim',
    event = 'VeryLazy',
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- provider Ollama
      provider = 'ollama',
      vendors = {
        ollama = {
          __inherited_from = 'openai',
          api_key_name = '',
          endpoint = 'https://europe-west1-arkeup-ai-gen-lab.cloudfunctions.net/use-ollama-multi/v1',
          model = 'codegemma:7b',
        },
      },
      -- provider Vertex
      -- provider = 'vertex',
      -- vertex = {
      --   endpoint = 'https://LOCATION-aiplatform.googleapis.com/v1/projects/PROJECT_ID/locations/LOCATION/publishers/google/models',
      --   api_key_name = 'cmd:gcloud auth print-access-token --quiet',
      --   model = 'gemini-1.5-flash-002',
      --   timeout = 30000, -- Timeout in milliseconds
      --   temperature = 0,
      --   max_tokens = 4096,
      --   -- ['local'] = false,
      -- },     -- ollama vendor
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
