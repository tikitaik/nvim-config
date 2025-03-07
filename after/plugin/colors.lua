function gruvbox()
    vim.g.gruvbox_background = "hard"
    vim.g.gruvbox_foreground = "original"
    vim.cmd.colorscheme("gruvbox")
end

function gruvbox_material()
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_foreground = "original"

    vim.cmd.colorscheme("gruvbox-material")
end

function melange()
    vim.cmd.colorscheme("melange")
end

gruvbox()
--gruvbox_material()
--melange()
