" ------------------------------
" General
" ------------------------------

" set leader to space
nmap <space> <leader>
xmap <space> <leader>

nmap <space><space> <leader><leader>
xmap <space><space> <leader><leader>


" ------------------------------
" Insert Mode
" ------------------------------

" folding
inoremap <F9> <C-O>za

" Ctrl-e just to the end of the line
inoremap <C-e> <C-o>A

" navigation
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

" Delete word backwards
inoremap ÿ <C-o>dvb

" ------------------------------
" Normal Mode
" ------------------------------

"mappings to move lines with Alt-Shift-[jk] doesn't work with macvim
nnoremap <A-J> :m .+1<CR>==
nnoremap Ê :m .+1<CR>==
nnoremap <A-K> :m .-2<CR>==
nnoremap Ë :m .-2<CR>==

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

" auto indent complete file (format)
nmap <leader>l mzgg=G`z

" auto indent complete file (format json)
nmap <leader>lj :%!python -m json.tool<CR>

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

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ec :e $MYVIMRC<CR>
nnoremap <silent> <leader>sc :so $MYVIMRC<CR>:echo "Reloaded Config"<CR>

" New line with Enter without going insert mode
nnoremap <A-CR> O<Esc>
nnoremap <CR> o<Esc>

" go to the end of line and delete char Alt-l
"Alt as Option
nnoremap ì <Esc>$x<Esc>
"Alt as Meta
nnoremap ¬ <Esc>$x<Esc>

" Open file under cursor
nnoremap <C-W>f gf
" Open file under cursor in split
nnoremap <C-W><C-F> <C-W>vgf

" Create a key mapping to indent text when pressing Command+] (not working)
nnoremap <D-]> >>
nnoremap <D-[> <<

" Previous Tab Alt-j
nnoremap ∆ gT
" Next Tab Alt-k
nnoremap ˚ gt

" ------------------------------
" Visual Mode
" ------------------------------

"mappings to move lines with Alt-Shift-[jk]
vnoremap <A-J> :m '>+1<CR>gv=gv
vnoremap Ê :m '>+1<CR>gv=gv
vnoremap <A-K> :m '<-2<CR>gv=gv
vnoremap Ë :m '<-2<CR>gv=gv

" folding
vnoremap <F9> zf

" Copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c

" Duplicate line with Alt-d (Option and Meta)
vmap ∂ yP
vmap ä yP
