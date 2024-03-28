return {
  "telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("live_grep_args")
      end,
    },
  },
  keys = {
    { "<leader>/", false },
    { "<leader><space>", false },
    { "<leader>ff", false },
    {
      "<leader>/",
      function()
        require("telescope").extensions.live_grep_args.auto_quoting = false
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      "Live grep with Args",
    },
    -- change a keymap
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    -- -- add a keymap to browse plugin files
    -- {
    --   "<leader>fp",
    --   function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
    --   desc = "Find Plugin File",
    -- },
  },
}
