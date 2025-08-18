return {
    {
        "vague2k/vague.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
    },
    {
        "daschw/leaf.nvim",
        opts = { 
            transparent = false,
            theme = 'dark',
            contrast = 'high',
        }
    }
}
