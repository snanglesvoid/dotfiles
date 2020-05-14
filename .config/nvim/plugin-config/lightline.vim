" Vim Plug config for lightline

" lightline
" colors: 'wombat', 'seoul256' , 'one'
set noshowmode
let g:lightline = {
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' },
  \ 'colorscheme' : 'one',
  \ 'enable' : {
  \   'statusline' : 1,
  \   'tabline' : 1,
  \ },
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'cocstatus', 'readonly','gitstatus','filename', 'modified' ]
  \   ],
  \   'right':[
  \     [ 'filetype', 'lineinfo' ],
  \     [ 'blame' ]
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \   'cocstatus' : 'coc#status',
  \   'currentfunction' : 'CocCurrentFunction',
  \   'gitstatus' : 'GitStatus',
  \ }
\ }

fun! s:setLightlineColorscheme(name)
    let g:lightline.colorscheme = a:name
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfun

fun! s:lightlineColorschemes(...)
    return join(map(
                \ globpath(&rtp,"autoload/lightline/colorscheme/*.vim",1,1),
                \ "fnamemodify(v:val,':t:r')"),
                \ "\n")
endfun

function! s:lightlineColors(...)
  let schemes = map(
                 \ globpath(&rtp,"autoload/lightline/colorscheme/*.vim",1,1),
                 \ "fnamemodify(v:val,':t:r')")
  
  return fzf#run(fzf#wrap('lightline',{
  \ 'sink'  : function('s:setLightlineColorscheme'),
  \ 'source' : fzf#vim#_uniq(schemes),
  \ 'options': '+m --prompt="Set Lightline Color: "'
  \ }))
endfunction


command! -bar -bang LightlineColors call s:lightlineColors(<bang>0)


" Tmuxline config

let g:tmuxline_preset = 'minimal'
