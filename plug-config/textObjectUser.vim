"Define ad/id to select a date such as 2013-03-16, and define at/it to select a 
"time such as 22:04:21:
"call textobj#user#plugin('datetime', {
"      \   'date': {
"      \     'pattern': '\<\d\d\d\d-\d\d-\d\d\>',
"      \     'select': ['ad', 'id'],
"      \   },
"      \   'time': {
"      \     'pattern': '\<\d\d:\d\d:\d\d\>',
"      \     'select': ['at', 'it'],
"      \   },
"      \ })
""Define aA to select text from << to the matching >> , and define iA to select 
""text inside << and >>
"call textobj#user#plugin('braces', {
"      \   'angle': {
"      \     'pattern': ['<<', '>>'],
"      \     'select-a': 'aA',
"      \     'select-i': 'iA',
"      \   },
"      \ })
""Define al to select the current line, and define il to select the current line 
""without indentation:
"call textobj#user#plugin('line', {
"\   '-': {
"\     'select-a-function': 'CurrentLineA',
"\     'select-a': 'al',
"\     'select-i-function': 'CurrentLineI',
"\     'select-i': 'il',
"\   },
"\ })
"
function! CurrentLineA()
  normal! 0
  let head_pos = getpos('.')
  normal! $
  let tail_pos = getpos('.')
  return ['v', head_pos, tail_pos]
endfunction

function! CurrentLineI()
  normal! ^
  let head_pos = getpos('.')
  normal! g_
  let tail_pos = getpos('.')
  let non_blank_char_exists_p = getline('.')[head_pos[2] - 1] !~# '\s'
  return
  \ non_blank_char_exists_p
  \ ? ['v', head_pos, tail_pos]
  \ : 0
endfunction
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
