" Recognize filetypes
au BufNewFile,BufRead .prettierrc set filetype=json
au BufNewFile,BufRead .babelrc set filetype=json
au BufNewFile,BufRead .eslintrc set filetype=json

au BufNewFile,BufRead *.xcworkspacedata set filetype=xml

au BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

au BufNewFile,BufRead Brewfile set filetype=bash

" XML
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
