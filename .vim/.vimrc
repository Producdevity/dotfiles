set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax on                    " enable syntax highlighting

" Make current window more obvious by turning off/adjusting some features in non-current windows.
augroup BgHighlight
  autocmd!
  if exists('+colorcolumn')
      autocmd BufEnter,FocusGained,VimEnter,WinEnter * let &l:colorcolumn='+' . join(range(0, 254), ',+')
      autocmd FocusLost,WinLeave * let &l:colorcolumn=join(range(1, 255), ',')
  endif
  autocmd InsertLeave,VimEnter,WinEnter * setlocal cursorline
  autocmd InsertEnter,WinLeave * setlocal nocursorline
augroup END

" Indent lines
let g:indentLine_color_term = 000

" Load MacVim vimrc Settings
if has("gui_macvim")
  so ~/.mvimrc
endif

" Recognize filetypes
au BufNewFile,BufRead .prettierrc set filetype=json
au BufNewFile,BufRead .eslintrc set filetype=json

au BufNewFile,BufRead config_persgroep set filetype=sshconfig
au BufNewFile,BufRead config_hexelnet set filetype=sshconfig
au BufNewFile,BufRead config_base set filetype=sshconfig

au BufNewFile,BufRead *.xcworkspacedata set filetype=xml
