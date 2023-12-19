return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  keys = {},
  opts = {
    ---@type lspconfig.options
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {},
      rust_analyzer = {
        -- checkOnSave = {
        --   command = "clippy && cargo fmt",
        -- },
      },
    },
  },
}
