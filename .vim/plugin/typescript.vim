" typescript configuration

let g:typescript_compiler_options = '-sourcemap'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
autocmd BufNewFile,BufRead *.ts,*.tsx setlocal filetype=typescript
