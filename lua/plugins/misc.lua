return {
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    }, 
    {
        "kylechui/nvim-surround",
        version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        opts = {}
    },
    {
        "mbbill/undotree"
    },
    {
        "fatih/vim-go"
    }
}
