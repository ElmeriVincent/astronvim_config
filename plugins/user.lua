return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    -- Rust fmt on save 
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },

  {
    -- Cargo crates
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function(_, opts)
     local crates = require('crates')
     crates.setup(opts)
     crates.show()
    end,
  },
}
