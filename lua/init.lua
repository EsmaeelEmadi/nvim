require'colorizer'.setup()

local parser_config = require"nvim-treesitter.parsers".get_parser_configs()
parser_config.supercollider = {
    install_info = {
        url = "~/code/tree-sitter-supercollider",
        files = {"src/parser.c"}
    },
    filetype = "supercollider", -- if filetype does not agrees with parser name
    used_by = {"scd", "sc"} -- additional filetypes that use this parser
}

require'nvim-treesitter.configs'.setup {
    -- ensure_installed = "ensure_installed", -- one of "all", "ensure_installed" (parsers with maintainers), or a list of languages
ensure_installed={"svelte", "typescript", "javascript", "fish", "go", "json", "html", "rust", "lua", "scss", "svelte", "tsx", "vim"},
    indent = {enable = true},
    highlight = {
        enable = true -- false will disable the whole extension
        -- disable = { "c", "cpp", "html" , "python", "bash"},  -- list of language that will be disabled
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm"
        }
    }
}
