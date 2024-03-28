return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    table.insert(opts.ensure_installed, "isort")
    table.insert(opts.ensure_installed, "rust-analyzer")
    table.insert(opts.ensure_installed, "rustfmt")
  end,
}
