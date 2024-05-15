return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use
  "christoomey/vim-tmux-navigator", -- tmux & split window navigation

  config = function()
  local function open_file()
    -- Check if the file is already open in a buffer
    local bufnr = vim.fn.bufnr(vim.fn.expand('%'), true)
    if bufnr == -1 then
        -- If not open, open the file in a new buffer
        vim.cmd('e ' .. vim.fn.expand('%'))
    else
        -- If already open, switch to the buffer
        vim.cmd('buffer ' .. bufnr)
    end
end

vim.g.nvim_tree_bindings = {{ key = {"<space>", "o"}, cb = open_file, mode = "n" },}
end
}
