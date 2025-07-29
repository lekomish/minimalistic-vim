# Minimalist VIM Configuration

A lightweight, plugin-free Vim configuration focused on core functionality and keyboard efficiency.

## Installation

```bash
mkdir -p ~/.config/vim
git clone https://github.com/lekomish/minimalistic-vim.git ~/.config/vim
```

## Requirements

- Vim 8.0+
- UTF-8 compatible terminal
- `xclip` for system clipboard (Linux)

## Key Bindings

### Leader Key

- `<Space>` - Leader key prefix for custom commands

### Window Navigation

| Key        | Action                     | Mode   |
| ---------- | -------------------------- | ------ |
| `Ctrl+h`   | Move focus to left window  | Normal |
| `Ctrl+j`   | Move focus to window below | Normal |
| `Ctrl+k`   | Move focus to window above | Normal |
| `Ctrl+l`   | Move focus to right window | Normal |
| `Ctrl+w v` | Create vertical split      | Normal |
| `Ctrl+w h` | Create horizontal split    | Normal |

### File Operations

| Key      | Action            | Mode          |
| -------- | ----------------- | ------------- |
| `Ctrl+s` | Save current file | Normal/Insert |
| `Ctrl+q` | Save and quit     | Normal/Insert |

### Buffers & Tabs

| Key         | Action                       | Mode   |
| ----------- | ---------------------------- | ------ |
| `Ctrl+n`    | Toggle file explorer (Netrw) | Normal |
| `<Space>f`  | Open new tab                 | Normal |
| `<Space>bd` | Delete current buffer        | Normal |
| `<Space>ba` | Delete all buffers           | Normal |
| `Tab`       | Switch to next tab           | Normal |

### Terminal

| Key      | Action               | Mode     |
| -------- | -------------------- | -------- |
| `Ctrl+t` | Open terminal window | Normal   |
| `Ctrl+t` | Exit terminal        | Terminal |

### Text Manipulation

| Key         | Action                               | Mode   |
| ----------- | ------------------------------------ | ------ |
| `J`         | Move selection down                  | Visual |
| `K`         | Move selection up                    | Visual |
| `<Space>rw` | Replace current word globally        | Normal |
| `<Space>sw` | Wrap selection with custom character | Normal |

### Clipboard

| Key      | Action                     | Mode          |
| -------- | -------------------------- | ------------- |
| `Ctrl+c` | Copy to system clipboard   | Normal/Visual |
| `Ctrl+v` | Past from system clipboard | Normal/Visual |

### Shortcuts

| Key         | Action                           | Mode          |
| ----------- | -------------------------------- | ------------- |
| `;`         | Enter command mode (same as `:`) | Normal/Visual |
| `<Space>sc` | Toggle spellcheck                | Normal        |
| `<Space>r`  | Show content of registers        | Normal        |

## Philosophy

This configuration follows these principles:

1. **Minimalism** - No plugins, only essential features
2. **Transparency** - All code is documented
3. **Keyboard-first** - Optimized for hands-one-home-row usage
4. **Cross-platform** - Works in terminal and GUI Vim

## Customization

### Override Settings

Create `~/.config/vim/conf.d/99-local.vim` for personal overrides that won't be committed.

### Temporary Files

All temporary files are stored in `/tmp/vim/`:

- Netrw history: `/tmp/vim/netrw`
- Undo history: `/tmp/vim/undo`

## Structure

```
~/.config/vim/
├── vimrc                       # Main entry point
└── conf.d/
    ├── 00-settings.vim         # Core settings
    ├── 10-mappings.vim         # Key bindings
    ├── 20-autocomplete.vim     # Tab completion
    ├── 30-filetype.vim         # Language-specific rules
    └── 40-statusline.vim       # Status bar
```

## Special Notes

1. **Terminal Integration**: Requires Vim compiled with `+terminal` support
2. **Clipboard**: Uses `xclip` on Linux, falls back to Vim's registers otherwise
3. **Visual Mode**: Text manipulation commands work on selected text blocks
4. **Netrw**: File explorer respects `wildignore` patterns for file filtering
