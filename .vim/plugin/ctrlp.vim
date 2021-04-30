" Ctrl P

" Ignore directories in ctrl-p
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test$\|bin$\|pkg$\|vendor$',
      \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\.a$\|\.bak' }
