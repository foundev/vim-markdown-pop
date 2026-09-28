" Distinct, readable highlighting for markdown on top of any colorscheme.
function! mdpop#apply() abort
  " headings: each level a different color, H1/H2 with background bars
  hi markdownH1        ctermfg=16  ctermbg=204 cterm=bold guifg=#000000 guibg=#ff5f87 gui=bold
  hi markdownH2        ctermfg=16  ctermbg=215 cterm=bold guifg=#000000 guibg=#ffaf5f gui=bold
  hi markdownH3        ctermfg=221 cterm=bold,underline   guifg=#ffd75f gui=bold,underline
  hi markdownH4        ctermfg=114 cterm=bold             guifg=#87d787 gui=bold
  hi markdownH5        ctermfg=117 cterm=bold             guifg=#87d7ff gui=bold
  hi markdownH6        ctermfg=183 cterm=bold             guifg=#d7afff gui=bold
  hi! link markdownH1Delimiter markdownH1
  hi! link markdownH2Delimiter markdownH2
  hi! link markdownH3Delimiter markdownH3
  hi! link markdownH4Delimiter markdownH4
  hi! link markdownH5Delimiter markdownH5
  hi! link markdownH6Delimiter markdownH6
  " inline formatting
  hi markdownBold          ctermfg=231 cterm=bold          guifg=#ffffff gui=bold
  hi markdownItalic        ctermfg=229 cterm=italic        guifg=#ffffaf gui=italic
  hi markdownBoldItalic    ctermfg=231 cterm=bold,italic   guifg=#ffffff gui=bold,italic
  hi markdownStrike        ctermfg=244 cterm=strikethrough guifg=#808080 gui=strikethrough
  " code: green on a dark gray background
  hi markdownCode          ctermfg=120 ctermbg=236 guifg=#87ff87 guibg=#303030
  hi markdownCodeBlock     ctermfg=120 ctermbg=236 guifg=#87ff87 guibg=#303030
  hi markdownCodeDelimiter ctermfg=242 ctermbg=236 guifg=#6c6c6c guibg=#303030
  " links, lists, quotes, rules
  hi markdownLinkText      ctermfg=75  cterm=underline guifg=#5fafff gui=underline
  hi markdownUrl           ctermfg=242 guifg=#6c6c6c
  hi markdownListMarker    ctermfg=208 cterm=bold guifg=#ff8700 gui=bold
  hi markdownOrderedListMarker ctermfg=208 cterm=bold guifg=#ff8700 gui=bold
  hi markdownBlockquote    ctermfg=141 cterm=bold guifg=#af87ff gui=bold
  hi markdownRule          ctermfg=242 cterm=bold guifg=#6c6c6c gui=bold
  " preservim/vim-markdown uses html*/mkd* groups
  hi! link htmlH1 markdownH1
  hi! link htmlH2 markdownH2
  hi! link htmlH3 markdownH3
  hi! link htmlH4 markdownH4
  hi! link htmlH5 markdownH5
  hi! link htmlH6 markdownH6
  hi! link htmlBold markdownBold
  hi! link htmlItalic markdownItalic
  hi! link htmlBoldItalic markdownBoldItalic
  hi! link htmlStrike markdownStrike
  hi! link mkdHeading markdownH1Delimiter
  hi! link mkdCode markdownCode
  hi! link mkdCodeStart markdownCodeDelimiter
  hi! link mkdCodeEnd markdownCodeDelimiter
  hi! link mkdCodeDelimiter markdownCodeDelimiter
  hi! link mkdLink markdownLinkText
  hi! link mkdInlineURL markdownUrl
  hi! link mkdURL markdownUrl
  hi! link mkdListItem markdownListMarker
  hi! link mkdBlockquote markdownBlockquote
  hi! link mkdRule markdownRule
endfunction
