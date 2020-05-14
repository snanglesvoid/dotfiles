
" CTAGS config
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }
let g:tagbar_type_elm = {
  \ 'kinds' : [
    \ 'f:function:0:0',
    \ 'm:modules:0:0',
    \ 'i:imports:1:0',
    \ 't:types:1:0',
    \ 'a:type aliases:0:0',
    \ 'c:type constructors:0:0',
    \ 'p:ports:0:0',
    \ 's:functions:0:0',
  \ ]
  \}
