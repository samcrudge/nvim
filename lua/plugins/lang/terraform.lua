return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "hcl",
                "terraform",
            })
        end,
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        opts = function(_, opts)
            if type(opts.sources) == "table" then
                local nls = require("null-ls")
                vim.list_extend(opts.sources, {
                    nls.builtins.formatting.hclfmt,
                    nls.builtins.formatting.terraform_fmt,

                    nls.builtins.diagnostics.terraform_validate,
                })
            end
        end,
    },
}