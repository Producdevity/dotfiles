let g:NERDTreeIgnore = ['^node_modules$', '^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$'] " Hide certain files and directories from NERDTree
let g:NERDTreeShowHidden = 1                                                                                            " Show hidden files/directories

" Toggle Nerdtree
noremap <leader><leader>n :NERDTreeToggle<CR>
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
let g:NERDTreeGitStatusUseNerdFonts = 1                    " Use icons
let g:NERDTreeGitStatusShowClean = 1                       " Show 'clean' indicator
