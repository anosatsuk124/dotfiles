-- Key bindings
vim.keymap.set('n', '<C-b>n', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<C-b>p', ':BufferLineCyclePrev<CR>')

vim.keymap.set('n', '<S-tab>', ':BufferLineCycleNext<CR>')

vim.keymap.set('n', '<C-b>1', '<cmd>lua require("bufferline").go_to_buffer(1, true)<cr>')
vim.keymap.set('n', '<C-b>2', '<cmd>lua require("bufferline").go_to_buffer(2, true)<cr>')
vim.keymap.set('n', '<C-b>3', '<cmd>lua require("bufferline").go_to_buffer(3, true)<cr>')
vim.keymap.set('n', '<C-b>4', '<cmd>lua require("bufferline").go_to_buffer(4, true)<cr>')
vim.keymap.set('n', '<C-b>5', '<cmd>lua require("bufferline").go_to_buffer(5, true)<cr>')
vim.keymap.set('n', '<C-b>6', '<cmd>lua require("bufferline").go_to_buffer(6, true)<cr>')
vim.keymap.set('n', '<C-b>7', '<cmd>lua require("bufferline").go_to_buffer(7, true)<cr>')
vim.keymap.set('n', '<C-b>8', '<cmd>lua require("bufferline").go_to_buffer(8, true)<cr>')
vim.keymap.set('n', '<C-b>9', '<cmd>lua require("bufferline").go_to_buffer(9, true)<cr>')

vim.keymap.set('n', 'gD', ':BufferLinePickClose<CR>')

-- Setup
require('bufferline').setup {
  options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    numbers = "ordinal",
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    -- NOTE: this plugin is designed with this icon in mind,
    -- and so changing this is NOT recommended, this is intended
    -- as an escape hatch for people who cannot bear it for whatever reason
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    --- name_formatter can be used to change the buffer's label in the bufferline.
    --- Please note some names can/will break the
    --- bufferline so use this at your discretion knowing that it has
    --- some limitations that will *NOT* be fixed.
    name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
      -- remove extension from markdown files for example
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 12,
    diagnostics = "coc",
    diagnostics_update_in_insert = false,
    -- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
    offsets = {{filetype = "NvimTree", text = "File Explorer"}},
    color_icons = true, -- whether or not to add the filetype icon highlights
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = true,
    show_buffer_default_icon = true, -- whether or not an unrecognised filetype should show a default icon
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "thick",  --"slant" |  | "thin" | { 'any', 'any' },
    enforce_regular_tabs = false, -- | true,
    always_show_bufferline = true, -- | false,
    sort_by = 'id' , --[[ 'insert_after_current'|'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
      -- add custom logic
      return buffer_a.modified > buffer_b.modified
    end
    ]]--
  }
}
