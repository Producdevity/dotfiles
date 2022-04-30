let g:YassineColorColumnBlacklist = ['diff', 'undotree', 'nerdtree', 'qf']
let g:YassineCursorlineBlacklist = ['command-t']
let g:YassineMkviewFiletypeBlacklist = ['diff', 'hgcommit', 'gitcommit']

function! autocmds#attempt_select_last_file() abort
  let l:previous=expand('#:t')
  if l:previous != ''
    call search('\v<' . l:previous . '>')
  endif
endfunction

function! autocmds#should_colorcolumn() abort
  return index(g:YassineColorColumnBlacklist, &filetype) == -1
endfunction

function! autocmds#should_cursorline() abort
  return index(g:YassineCursorlineBlacklist, &filetype) == -1
endfunction

" Loosely based on: http://vim.wikia.com/wiki/Make_views_automatic
function! autocmds#should_mkview() abort
  return
        \ &buftype == '' &&
        \ index(g:YassineMkviewFiletypeBlacklist, &filetype) == -1 &&
        \ !exists('$SUDO_USER') " Don't create root-owned files.
endfunction

function! autocmds#mkview() abort
  if exists('*haslocaldir') && haslocaldir()
    " We never want to save an :lcd command, so hack around it...
    cd -
    mkview
    lcd -
  else
    mkview
  endif
endfunction

function! autocmds#blur_statusline() abort
  " Default blurred statusline (buffer number: filename).
  let l:blurred='%{statusline#gutterpadding(0)}'
  let l:blurred.='\ ' " space
  let l:blurred.='\ ' " space
  let l:blurred.='\ ' " space
  let l:blurred.='%<' " truncation point
  let l:blurred.='%f' " filename
  let l:blurred.='%=' " split left/right halves (makes background cover whole)
  call s:update_statusline(l:blurred, 'blur')
endfunction

function! autocmds#focus_statusline() abort
  " `setlocal statusline=` will revert to global 'statusline' setting.
  call s:update_statusline('', 'focus')
endfunction

function! s:update_statusline(default, action) abort
  " let l:statusline = s:get_custom_statusline(a:action)
  " if type(l:statusline) == type('')
  "   " Apply custom statusline.
  "   execute 'setlocal statusline=' . l:statusline
  " elseif l:statusline == 0
  "   " Do nothing.
  "   "
  "   " Note that order matters here because of Vimscript's insane coercion rules:
  "   " when comparing a string to a number, the string gets coerced to 0, which
  "   " means that all strings `== 0`. So, we must check for string-ness first,
  "   " above.
  "   return
  " else
  "   execute 'setlocal statusline=' . a:default
  " endif
endfunction

function! s:get_custom_statusline(action) abort
  if &ft == 'command-t'
    " Will use Command-T-provided buffer name, but need to escape spaces.
    return '\ \ ' . substitute(bufname('%'), ' ', '\\ ', 'g')
  elseif &ft == 'diff' && exists('t:diffpanel') && t:diffpanel.bufname == bufname('%')
    return 'Undotree\ preview' " Less ugly, and nothing really useful to show.
  elseif &ft == 'undotree'
    return 0 " Don't override; undotree does its own thing.
  elseif &ft == 'nerdtree'
    return 0 " Don't override; NERDTree does its own thing.
  elseif &ft == 'qf'
    if a:action == 'blur'
      return 'Quickfix'
    else
      return g:YassineQuickfixStatusline
    endif
  endif

  return 1 " Use default.
endfunction

if has('autocmd')
  augroup YassineAutocmds
    autocmd!

    autocmd VimResized * execute "normal! \<c-w>="

    " http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
    autocmd VimEnter * autocmd WinEnter * let w:created=1
    autocmd VimEnter * let w:created=1

    " Disable paste mode on leaving insert mode.
    autocmd InsertLeave * set nopaste

    " Make current window more obvious by turning off/adjusting some features in non-current
    " windows.
    if exists('+colorcolumn')
      autocmd BufEnter,FocusGained,VimEnter,WinEnter * if autocmds#should_colorcolumn() | let &l:colorcolumn='+' . join(range(0, 254), ',+') | endif
      autocmd FocusLost,WinLeave * if autocmds#should_colorcolumn() | let &l:colorcolumn=join(range(1, 255), ',') | endif
    endif
    autocmd InsertLeave,VimEnter,WinEnter * if autocmds#should_cursorline() | setlocal cursorline | endif
    autocmd InsertEnter,WinLeave * if autocmds#should_cursorline() | setlocal nocursorline | endif
    if has('statusline')
      autocmd BufEnter,FocusGained,VimEnter,WinEnter * call autocmds#focus_statusline()
      autocmd FocusLost,WinLeave * call autocmds#blur_statusline()
    endif

    if has('mksession')
      " Save/restore folds and cursor position.
      autocmd BufWritePost,BufLeave,WinLeave ?* if autocmds#should_mkview() | call autocmds#mkview() | endif
      if has('folding')
        autocmd BufWinEnter ?* if autocmds#should_mkview() | silent! loadview | execute 'silent! ' . line('.') . 'foldopen!' | endif
      else
        autocmd BufWinEnter ?* if autocmds#should_mkview() | silent! loadview | endif
      endif
    elseif has('folding')
      " Like the autocmd described in `:h last-position-jump` but we add `:foldopen!`.
      autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | execute 'silent! ' . line("'\"") . 'foldopen!' | endif
    else
      autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | endif
    endif

    autocmd BufWritePost */spell/*.add silent! :mkspell! %
  augroup END
endif

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

autocmd FileType json set foldmethod=syntax
