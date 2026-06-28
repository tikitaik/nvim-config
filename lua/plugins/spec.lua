return {

    { 'christoomey/vim-tmux-navigator', lazy = false },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    { "savq/melange-nvim", as = "melange" },
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
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
        lazy = false,
        config = function()
            require("nvim-treesitter").setup({
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
            })

            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "c", "cpp", "c_sharp", "glsl", "javascript", "lua", "markdown", "vim" },
                callback = function()
                    vim.treesitter.start()
                end,
            })
        end,
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
