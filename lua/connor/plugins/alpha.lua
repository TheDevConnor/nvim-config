return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    local version_lines = vim.split(vim.api.nvim_exec("version", true), "\n", {})

    -- Set header
    dashboard.section.header.val = {
	    "███████╗██╗   ██╗ ██████╗██╗  ██╗    ██╗  ██╗███████╗██████╗ ███████╗    ██╗    ██╗███████╗     ██████╗  ██████╗", 
            "██╔════╝██║   ██║██╔════╝██║ ██╔╝    ██║  ██║██╔════╝██╔══██╗██╔════╝    ██║    ██║██╔════╝    ██╔════╝ ██╔═══██╗", 
            "█████╗  ██║   ██║██║     █████╔╝     ███████║█████╗  ██████╔╝█████╗      ██║ █╗ ██║█████╗      ██║  ███╗██║   ██║", 
            "██╔══╝  ██║   ██║██║     ██╔═██╗     ██╔══██║██╔══╝  ██╔══██╗██╔══╝      ██║███╗██║██╔══╝      ██║   ██║██║   ██║", 
            "██║     ╚██████╔╝╚██████╗██║  ██╗    ██║  ██║███████╗██║  ██║███████╗    ╚███╔███╔╝███████╗    ╚██████╔╝╚██████╔╝", 
            "╚═╝      ╚═════╝  ╚═════╝╚═╝  ╚═╝    ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝     ╚══╝╚══╝ ╚══════╝     ╚═════╝  ╚═════╝ ", 
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
      dashboard.button("CTRL N", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC fr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("SPC gg", "洛 > Opens LazyGit", "<cmd>LazyGit<CR>"),
      dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    dashboard.section.footer = {
      type = "text",
      val = { "󰀘 " ..  version_lines[2] },
      opts = {
        position = "center",
        hl = "DashboardFooter",
      },
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
