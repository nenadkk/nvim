# Keymaps cheatsheet
In this file you can find all the keymaps that were modified in this setup from the original ones.\
The letters into the `[]` brackets, next to the keymaps indicate the mode: `n` for `normal mode`, `i` for `insert mode` and `v` for `visual mode`.

## Mappings
### General info 
- **Mapleader**: ` ` (space)
- typing `(`, `[` or `{` will automatically close the brackets. This does not apply to `'` and `"` characters.

### Changing mode and saving file
- `jj` [`i`]: exits from insert mode
- `<C-s>` [`i`,`n`] in *insert mode* and *normal mode*: saves the file both  

### Moving across the windows
- `<C-h>` [`n`]: moves to the left window
- `<C-l>` [`n`]: moves to the right window
- `<C-k>` [`n`]: moves to the upper window
- `<C-j>` [`n`]: moves to the bottom window

### Folding
- `f` [`n`]: fold/unfold a chuck of code

### Moving the lines
- `J` [`v`]: moves down the selected lines 
- `K` [`v`]: moves up the selected lines 

### NvimTree
- `m` [`n`]: toggles the NvimTree plugin (the file explorer)

### Terminal
- `<C-t>` [`n`]: opens the terminal in neovim. To close it you have to type the `exit` command

### Interacting with the system clipboard
- `<C-p>` [`n`]: paste from the system clipboard
- `<C-y>` [`v`]: copy to the system clipboard

### Searching 
- `<leader>v` [`n`]: selects the word under the cursor. The cursor must not be at the beginning of the word.
- `?` [`n`]: search the word under the cursor
- `?` [`v`]: search the selected word
- `<leader>no`, [`n`]: removes the highlighting of the last searched word

### UndoTree
- `<leader>u` [`n`]: toggles the undotree menù












