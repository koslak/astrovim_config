return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.colorscheme.nightfox", enabled = false },
  { import = "astrocommunity.colorscheme.kanagawa", enabled = false },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.everforest", enabled = true },
  { import = "astrocommunity.colorscheme.catppuccin" },
}
