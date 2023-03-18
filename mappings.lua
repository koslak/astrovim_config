-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    --["n"] = { "nzzzv", desc = "Allow search results to be in the middle of the screen" },
    --["N"] = { "Nzzzv", desc = "Allow search results to be in the middle of the screen" },
    ["p"] = { "p==", desc = "Paste content with the right indenting" },
    ["<C-d>"] = { "<C-d>zz", desc = "" },
    ["<C-u>"] = { "<C-u>zz", desc = "" },
    ["<S-G>"] = { "<S-G>zz", desc = "" },
    ["<C-O>"] = { "<C-O>zz", desc = "" },
    ["<C-I>"] = { "<C-I>zz", desc = "" },
    ["<C-I>"] = { "<C-I>zz", desc = "" },
    ["{"] = { "{zz", desc = "" },
    ["}"] = { "}zz", desc = "" },

    ["<leader>d"] = { "\"_d", desc = "replace word without loosing previous selection" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replacing selected word" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },

  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Visual move selected block" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Visual move selected block" },
    ["<leader>d"] = { "\"_d", desc = "replace word without loosing previous selection" },
  },

  x = {
    ["<leader>p"] = { "\"_dP", desc = "replace word without loosing previous selection" },
  },

  i = {
    ["<C-c>"] = { "<Esc>", desc = "Accept visual mode selection changes with Ctrl + C" },
  },
}
