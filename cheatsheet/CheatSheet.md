<C-r>%        : pulls file name
* # g* g#     : find word under cursor (forwards/backwards)
%             : match brackets {}[]()
<C-N> <C-P>   : word completion in insert mode
<C-X><C-L>    : Line complete (c: <C-j> <C-k>)
<C-n> <C-p>   : word completion.
<C-A> <C-x>   : increment decrement number
=ae           : format entire document
=G            : format from current line to end of document
==            : format current line
=             : (re)indent the text on the current line or on the area selected 
=%            : (re)indent the current braces { ... }
G=gg          : auto (re)indent entire document
guu           : lowercase line
gUU           : uppercase line
~             : invert case (upper->lower; lower->upper) of current character
gf            : open file name under cursor (SUPER)
ga            : display hex, ascii value of character under cursor
xp            : swap next two characters around
CTRL-A,CTRL-X : increment, decrement next number on same line as the cursor
'.            : jump to last modification line (SUPER)
`.            : jump to exact spot in last modification line`
<C-O>         : retrace your movements in file (backward)
<C-I>         : retrace your movements in file (forward)
:ju(mps)      : list of your movements {{help|jump-motions}}
<CR>          : carriage Return for maps
<Esc>         : Escape
<Leader>      : normally \  change with :let mapleader = ","
<Bar>         : | pipe
qa            : record keystrokes to register a
your commands
q             : quit recording
@a            : execute commands again
@@            : repeat
