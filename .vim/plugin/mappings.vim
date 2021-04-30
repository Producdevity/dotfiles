" ------------------------------
" General
" ------------------------------

" set leader to space
nmap <space> <leader>

nmap <space><space> <leader><leader>
xmap <space> <leader>


" ------------------------------
" Insert Mode
" ------------------------------

" folding
inoremap <F9> <C-O>za

" Ctrl-e just to the end of the line
inoremap <C-e> <C-o>A

" ------------------------------
" Normal Mode
" ------------------------------

" deactive arrow keys while vim is open
noremap <Left> :echoe "Use h"<CR>
noremap <Right> :echoe "Use l"<CR>
noremap <Up> :echoe "Use k"<CR>
noremap <Down> :echoe "Use j"<CR>


"mappings to move lines with Alt-[jk] doesn't work with macvim
nnoremap <A-J> :m .+1<CR>==
nnoremap ∆ :m .+1<CR>==
nnoremap <A-K> :m .-2<CR>==
nnoremap ˚ :m .-2<CR>==

" folding
nnoremap <F9> za
nnoremap <F9> <C-C>za

" Add a semicolon to end of line when pressing Alt-;
"Alt as Meta
nmap » A;<Esc>
"Alt as Option
nmap … A;<Esc>
" Add a comma to end of line when pressing Alt-,
"Alt as Meta
nmap ¬ A,<Esc>
"Alt as Option
nmap ≤ A,<Esc>

" Select all using standard editor shortcuts
nnoremap <C-a> GVgg
" split lines with shift-k
nnoremap K i<CR><Esc>

" auto indent complete file
nmap <leader>l mzgg=G`z

" Toggle Nerdtree
noremap <leader><leader>n :NERDTreeToggle<CR>
nnoremap <D-1> :NERDTreeToggle<CR>
"Find current file in nerdtree
noremap <leader><leader>f :NERDTreeFind<CR>

" Toggle Tagbar
nnoremap <leader>t :TagbarToggle<CR>

" no highlight search
nnoremap <leader>m :noh<CR>
" close buffer
nnoremap <leader>q :q<CR>
" close buffer forcing
nnoremap <leader>Q :q!<CR>
" close and save
nnoremap <leader>x :x<CR>
" write file
nnoremap <leader>w :w<CR>
" write all files
nnoremap <leader>wa :wa<CR>

" nmap C-(hjkl) navigate panes
nnoremap <C-h> <C-W><C-H>
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>

" Duplicate line with Alt-d  (∂)
"Alt as Meta
nnoremap ä yyp
"Alt as Option
nnoremap ∂ yyp 

"Anzu search count mapping
"nmap n <Plug>(anzu-n-with-echo)zz
"nmap N <Plug>(anzu-N-with-echo)zz
"nmap * <Plug>(anzu-star-with-echo)zz
"nmap # <Plug>(anzu-sharp-with-echo)zz
" clear status
"nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>emv :e ~/.mvimrc<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Scroll screen with the cursor
" nnoremap <C-J> gj<C-e>
" nnoremap <C-K> gk<C-y>

" New line with Enter without going insert mode
nnoremap <A-CR> O<Esc>
nnoremap <CR> o<Esc>

" to to end of line and delete char Alt-l
"Alt as Meta
nnoremap ¬ <Esc>$x<Esc>
"Alt as Option
nnoremap ì <Esc>$x<Esc>

" ------------------------------
" Visual Mode
" ------------------------------

"mappings to move lines with Alt-[jk]
vnoremap <A-J> :m '>+1<CR>gv=gv
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap <A-K> :m '<-2<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" folding
vnoremap <F9> zf

" Copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c

" Duplicate line with Alt-d (Option and Meta)
vmap ∂ yP
vmap ä yP
