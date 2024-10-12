-- ╔══════════════════════════════════════════════════════════════╗
--   File: config/ui/terr.lua
--   Configuration for nvim-tree
-- ╚══════════════════════════════════════════════════════════════╝

local icons = _0xVim_.icons

local git_icons = {
    unstaged = icons.gitChange,
    staged = icons.checkSquare,
    unmerged = icons.gitUnmerged,
    renamed = icons.gitRenamed,
    untracked = icons.gitAdd,
    deleted = icons.gitDeleted,
    ignored = icons.gitIgnored,
}

require('nvim-tree').setup {
    sort_by = "name",
    on_attach = on_attach,
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    git = {
        enable = true,
        ignore = false,
      },
    view = {
        side = 'left',
        width = 30,
        number = false,
        relativenumber = false,
    },
    diagnostics = {
        enable = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
    },
    renderer = {
        group_empty = true,
        highlight_opened_files = "none",
        root_folder_label = false,
        add_trailing = false,
        highlight_git = true,
        indent_markers = {
            enable = true,
            icons = {
              corner = "└ ",
              edge = "│ ",
              none = "  ",
            },
          },
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
                modified = true,
            },
            git_placement = "after",
            webdev_colors = true,
            padding = " ",
            symlink_arrow = " ➔ ",
            glyphs = {
                git = git_icons,
                folder = {
                default = "",
                empty = "",
                empty_open = "",
                open = "",
                symlink = "",
                },
            },
        },
    },
    actions = {
        open_file = {
            quit_on_open = false,
            resize_window = true,
        },
    }
}
