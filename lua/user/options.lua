lvim.builtin.dap.active = true
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "tokyonight-storm"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

local options = {
    shiftwidth = 4, -- the number of spaces inserted for each indentation
    tabstop = 4, -- insert 2 spaces for a tab
    fileencoding = "utf-8", -- the encoding written to a file
    scrolloff = 0,
    sidescrolloff = 8,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
