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
        "leoluz/nvim-dap-go", -- Goland Debug plugin
        lazy = false,
        config = function()
            require("dap-go").setup()  
        end,
    },
}
