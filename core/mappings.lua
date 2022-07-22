return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    ["<C-p>"] = false,
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
    ["<BS>"] = { ":nohlsearch<CR>", desc = "Clear highlight" },

    ["J"] = { "5j", desc = "Quick moving down" },
    ["K"] = { "5k", desc = "Quick moving up" },

    -- Telescope
    ["<C-p>"] = { ":lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown{layout_config = {height = 0.7}, previewer = false})<CR>", desc = "Find File:lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown{layout_config = {height = 0.7}, previewer = false})<CR>"},

    -- Quickly move current line
    -- These mappings also take a count, so 2]e moves the current line 2 lines below.
    ["[e"] = { ":<c-u>execute 'move -1-'. v:count1<CR>", desc = "Move line up" },
    ["]e"] = { ":<c-u>execute 'move +'. v:count1<CR>", desc = "Move line down" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
