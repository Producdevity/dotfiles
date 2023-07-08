" Conquer of Completion Settings

" Install these extensions if missing
let g:coc_global_extensions = [
    \'coc-vimlsp',
    \'coc-html',
    \'coc-html-css-support',
    \'coc-json',
    \'coc-tsserver',
    \'coc-eslint',
    \'coc-tslint',
    \'coc-sh',
    \'coc-solargraph',
    \'coc-phpls',
    \'coc-css',
    \'coc-git',
    \'coc-prettier',
    \'coc-emmet',
    \'coc-pairs',
    \'coc-yaml'
    \]


" Markdown Code Highlighting
let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help',
      \ 'html',
      \ 'bash=sh',
      \ 'css',
      \ 'scss',
      \ 'sass',
      \ 'javascript',
      \ 'js=javascript',
      \]

" Color changes
hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Setup prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Formatting selected code.
vmap <leader><leader>l  <Plug>(coc-format-selected)<CR>
xmap <leader><leader>l  <Plug>(coc-format-selected)<CR>
nmap <leader><leader>l  <Plug>(coc-format-selected)<CR>

function! s:show_documentation()
   if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Use gk to show documentation in preview window.
nnoremap <silent> gk :call <SID>show_documentation()<CR>

" Show diagnostics
nnoremap <silent> <leader>d :<C-u>CocList diagnostics<cr>

" Perform codeaction
nmap <silent> <c-space> <Plug>(coc-codeaction)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Select completion with <CR> and <Tab>
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Prettier and ESLint -> check if exist before installing
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Fix for using Node through NVM
let g:coc_node_path = trim(system('which node'))
