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
        config = true,
    },

    -- autotag html --
    {
        "windwp/nvim-ts-autotag",
        dependencies = { "nvim-treesitter/nvim-treesitter" }, -- Requires treesitter parsers
        event = { "BufReadPre", "BufNewFile" }, -- Recommended events if lazy loading
        opts = {
            -- Default configurations
            opts = {
                enable_close = true,           -- Auto close tags
                enable_rename = true,          -- Auto rename pairs of tags
                enable_close_on_slash = false, -- Auto close on trailing </
            },
            -- Also override individual filetype configs if needed
            per_filetype = {
                ["html"] = {
                    enable_close = true
                }
            }
        }
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
                    "java",
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
                pattern = {
                    "c",
                    "cpp",
                    "c_sharp",
                    "glsl",
                    "java",
                    "javascript",
                    "lua",
                    "markdown",
                    "vim"
                },
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

    {
        'WhoIsSethDaniel/mason-tool-installer',
        opts = {
            ensure_installed = {
                'clangd',
                'cmakelang',
                'css-lsp',
                'glsl_analyzer',
                'html-lsp',
                'jdtls',
                'json-lsp',
                'luacheck',
                'lua-language-server',
                'roslyn-language-server', -- Microsoft's C# server --
            },
        },
    },

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
