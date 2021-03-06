
local utils = require("utils")
Packer_bootstrap = utils.packer.auto_install_packer()

local packer_install_plugins = {
    ---------------
    ---- basic ----
    ---------------
    -- packer package manager
    {"wbthomason/packer.nvim"},
    -- optimized startup speed
    {"lewis6991/impatient.nvim", load_file = true},
    -- icon support
    {"kyazdani42/nvim-web-devicons", after = "impatient.nvim"},
    -- lua dependency
    {"nvim-lua/plenary.nvim", event = {"BufRead", "BufNewFile"}},
    -- character lookup
    {"BurntSushi/ripgrep", event = {"BufRead", "BufNewFile"}},
    -- file lookup
    {"sharkdp/fd", event = {"BufRead", "BufNewFile"}}
    -- chinese documentation
    {"yianwillis/vimcdoc", event = {"BufRead", "BufNewFile"}},
    ---------------
    ---- theme ----
    ---------------
    -- catppuccin
    {"catppuccin/nvim", as = "catppuccin", disable = false, load_file = true, after = "impatient.nvim"},
    -- syntax highighting
    {"nvim-treesitter/nvim-treesitter", load_file = true, event = {"BufRead", "BufNewFile"}},
    -- rainbow parenthess
    {"p00f/nvim-ts-rainbow", event = {"BufRead", "BufNewFile"}},
    -- provides contextual information for the status bar
    {"SmiteshP/nvim-gps", requires = "nvim-treesitter"},
    -- gitsigns
    --{"lewis6991/gitsigns.nvim", load_file = true, after = {"nvim-treesitter", "plenary.nvim"}},


}

-- ====== plugins ======
vim.cmd [[packadd packer.nvim]]
local packer = require("packer")
packer.startup({
    function(use)
        for _, plugin in ipairs(packer_install_plugins) do
            if plugin.load_file then
                local require_path
                if plugin.as then
                    require_path = utils.path.join("conf", plugin.as)
                else
                    require_path = utils.path.join("conf", string.match(plugin[1], "/([%w-_]+).?"))
                end
                plugin.config = "require('" .. require_path .. "')"
            end
            use(plugin)
        end
        -- Automatically set up configuration
        if Packer_bootstrap then
            require('packer').sync()
        end
    end,
    config = {
        display = {
            open_fn = require("packer.util").float
        }
    }
}
)

vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)
