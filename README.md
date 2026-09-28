# vim-markdown-pop

Makes markdown elements visually distinct in Vim, on top of whatever colorscheme you use.

| Element | Look |
|---|---|
| `# H1` | black text on a pink bar |
| `## H2` | bold orange text on a dark gray bar |
| `###`–`######` | bold yellow (underlined) / green / cyan / purple |
| `**bold**` | bright white bold |
| `*italic*` | pale yellow italic |
| `` `code` `` and blocks | green on dark gray |
| links | blue underline, URL dimmed |
| list markers | bold orange |
| `> quotes` | bold purple |

Works with Vim's built-in markdown syntax and with `preservim/vim-markdown`.

## Install

```vim
Plug 'foundev/vim-markdown-pop'
```

For best results enable true color: `set termguicolors`.

## License

MIT
