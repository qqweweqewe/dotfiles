return { 
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local conf = require("nvim-treesitter.configs")
    conf.setup({
      ensure_installed = { "lua", "java", "python", "bash", "csv", "dockerfile", "groovy", "http", "json", "kotlin", "nginx", "sql" },
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
