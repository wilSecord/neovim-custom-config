require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'bash',
        'python',
        'latex',
        'lua',
        'markdown',
        'json',
        'ocaml',
        'comment',
        'csv',
        'cpp',
        'c',
        'markdown_inline',
        'make',
        'r',
        'rust',
    },
    ignore_install = { 'org' },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'markdown' }
    },
}
