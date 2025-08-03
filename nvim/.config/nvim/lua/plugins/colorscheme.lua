return {
  {
    "Shatur/neovim-ayu",
    priority = 1000, -- Load before other plugins
    config = function()
      require("ayu").setup({
        -- You can put your custom options here
        mirage = true,
        terminal = true,
        overrides = {},
      })
      require("ayu").colorscheme()
    end,
  },
}
