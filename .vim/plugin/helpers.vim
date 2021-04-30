"------------BEGIN Remapping keys---------------------"

" Relativenumbers switch
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
  else
    set rnu
  endif
endfunc

"Ctrl-n to Toggle line (relative)numbers
nnoremap <C-n> :call NumberToggle()<cr>

"------------END Remapping keys---------------------"


"--------------------BEGIN SmoothScroll----------------------"
function! SmoothScroll(up)
  if a:up
    let scrollaction=""
  else
    let scrollaction=""
  endif
  exec "normal " . scrollaction
  redraw
  let counter=1
  while counter<&scroll
    let counter+=1
    sleep 15m
    redraw
    exec "normal " . scrollaction
  endwhile
endfunction

" simple smoother scrolling
" map <C-U> 20<C-Y>
" map <C-D> 20<C-E>

nnoremap <C-U> :call SmoothScroll(1)<Enter>
nnoremap <C-D> :call SmoothScroll(0)<Enter>
inoremap <C-U> <Esc>:call SmoothScroll(1)<Enter>i
inoremap <C-D> <Esc>:call SmoothScroll(0)<Enter>i

"--------------------END SmoothScroll----------------------"
