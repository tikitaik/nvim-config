return {

    { 'christoomey/vim-tmux-navigator', lazy = false },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    {
        "savq/melange-nvim",
        as = "melange",
    },

    { "ellisonleao/gruvbox.nvim", as = "gruvbox" },


    { "sainnhe/gruvbox-material", as = "gruvbox-material", },

    -- autopairs --
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end,
    },

    -- indent break lines --
    { "lukas-reineke/indent-blankline.nvim", as = "ibl", },

    {
        'nvim-treesitter/nvim-treesitter',
        opts = {
            ensure_installed = {
                "c",
                "cpp",
                "c_sharp",
                "glsl",
                "javascript",
                "lua",
                "luadoc",
                "markdown",
                "query",
                "vim",
                "vimdoc"
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,

            highlight = {
                enable = true,

                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = false,
            },
        },
    },

    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },
    -- LSP stuff --
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' , config = true },
    { 'williamboman/mason-lspconfig.nvim' },
    -- Autocomplete
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    -- Snippets
    { 'L3MON4D3/LuaSnip' },
    { 'rafamadriz/friendly-snippets' },
}
