return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")
    table.remove(opts.sources, 5)
    table.insert(opts.sources, null_ls.builtins.diagnostics.pyproject_flake8)
    table.insert(opts.sources, null_ls.builtins.formatting.isort.with({ timeout = 5000 }))
    table.insert(
      opts.sources,
      null_ls.builtins.formatting.rustfmt.with({
        extra_args = "--config-path=/home/darshn/arculus/repos/fleet/fleet_manager/",
      })
    )
    table.insert(opts.sources, null_ls.builtins.formatting.black.with({ timeout = 5000 }))

    -- opts.debug = true
  end,
}
