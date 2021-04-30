" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme gruvbox
set background=dark

let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'

" Column Color
" highlight ColorColumn ctermbg=0 guibg=#e5a3a3

" LineNumber Color
highlight LineNr guifg=#5598c6

" Underline the current line
highlight CursorLine gui=underline cterm=underline

" Prevent drawing whitespaces twice (performance)
highlight NonText cterm=NONE ctermfg=NONE
