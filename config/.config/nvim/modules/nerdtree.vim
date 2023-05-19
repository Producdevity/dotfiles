let g:NERDTreeIgnore = ['^node_modules$', '^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$'] " Hide certain files and directories from NERDTree
let g:NERDTreeShowHidden = 1                                                                                            " Show hidden files/directories

" Toggle Nerdtree
nnoremap <leader><leader>n :silent! NERDTreeToggle<CR>
nnoremap <C-b>:silent! NERDTreeToggle <CR>
nnoremap <D-1> :NERDTreeToggle<CR>

"Find current file in nerdtree
noremap <leader><leader>f :NERDTreeFind<CR>


" NERDTreeFindToggle (set in iTerm to call NERDTreeFindToggle())
function NERDTreeFindToggle()
    if g:NERDTree.IsOpen()
        :NERDTreeClose
    elseif bufexists(expand('%'))
        :NERDTreeFind
    else
        :NERDTree
    endif
endfunction

" ---------------------
"  nerdtree-git-plugin
" ---------------------
let g:NERDTreeGitStatusUseNerdFonts = 1 " Use icons
let g:NERDTreeGitStatusShowClean = 1 " Show 'clean' indicator


" -------------------------------
"  vim-nerdtree-syntax-highlight
" -------------------------------


" Disable uncommon file extensions highlighting 
" (this is a good idea if you are experiencing lag when scrolling. Find more about lag on next session.)
" let g:NERDTreeLimitedSyntax = 1
