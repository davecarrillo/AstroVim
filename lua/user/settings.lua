local config = {

  -- Set colorscheme
  colorscheme = "dracula",

  -- Add plugins
  plugins = {
    { "ghifarit53/tokyonight-vim" },
    { "catppuccin/nvim", as = "catppuccin" },
    { "morhetz/gruvbox" },
    { "tomasr/molokai" },
    { "dracula/vim",  as = "dracula" },
    { "sainnhe/sonokai" },
    { "jacoborus/tender.vim" },
    { "cocopon/iceberg.vim" },
    { "arcticicestudio/nord-vim" },
    -- { "andweeb/presence.nvim" },
    -- {
    -- "ray-x/lsp_signature.nvim",
    -- event = "BufRead",
    -- config = function()
    -- require("lsp_signature").setup()
    -- end,
    -- },
  },

  overrides = {
    treesitter = {
      ensure_installed = { "lua" },
    },
  },

  -- Diagnostics option
  diagnostics = {
    enable = true,
    text = "none",
  },

  -- Disable default plugins
  enabled = {
    bufferline = true,
    nvim_tree = true,
    lualine = true,
    lspsaga = true,
    gitsigns = true,
    colorizer = true,
    toggle_term = true,
    comment = true,
    symbols_outline = true,
    indent_blankline = true,
    dashboard = true,
    which_key = true,
    neoscroll = true,
    ts_rainbow = true,
    ts_autotag = true,
  },

  packer_file = vim.fn.stdpath "config" .. "/lua/packer_compiled.lua",

  polish = function()
    local opts = { noremap = true, silent = true }
    local map = vim.api.nvim_set_keymap
    local set = vim.opt
    -- Set options
    set.relativenumber = true

    -- Set key bindings
    map("n", "<C-s>", ":w!<CR>", opts)
    map("i", "´", "<Escape>", opts)

    -- Set autocommands
    vim.cmd [[
      augroup packer_conf
        autocmd!
        autocmd bufwritepost plugins.lua source <afile> | PackerSync
      augroup end
    ]]
  end,
}

return config
