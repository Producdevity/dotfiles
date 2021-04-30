" Airline
let g:airline_powerline_fonts = 1                 " Set airline font
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='tomorrow'                    " Set airline theme
let g:airline#extensions#tabline#enabled = 1      " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'  " Show just the filename
let g:airline#extensions#syntastic#enabled = 1    " Enable Syntasic
