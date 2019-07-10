set langmenu=en_US.UTF-8
""" language messages en_US.UTF-8

"" disable bell
set visualbell

"" set 256 color scheme:
set t_Co=256

"" set python colors:
highlight pythonComment ctermfg=59 
highlight pythonStatement ctermfg=red
highlight pythonFunction ctermfg=46
highlight pythonConditional ctermfg=red


syntax on

hi Comment ctermfg=DarkGreen
hi LineNr ctermfg=DarkCyan

"" in py files set tab -> space
autocmd Filetype python setlocal expandtab smarttab tabstop=4 number smartindent
set shiftwidth=0
""autocmd Filetype python setlocal shiftwidth=8

"" set mapping ru -> eng keyboard
"" set keymap=russian-jcukenwin


set spelllang=ru_yo,en_us
autocmd BufEnter *.txt setlocal spell

"" map ;; to esc
inoremap ;; 
"" and жж to esc
inoremap жж 

"" force to understand command while ru keyboard layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"" set hilight search
set hls


"" autocomment for python:
let s:f_py = ['py', 'python']

function Toggle_comment(old_mode)

        if index(s:f_py, &ft) != -1
                let line_n = line('.')
                let old_col = col('.')

                let line = getline(".")
                if ( line =~ "^[        ]*#")
                        execute "normal! mq^dw`qh"
                        if (a:old_mode == 'n')
                                normal! h
                        endif 
                else
                        execute "normal I# "
                        if (a:old_mode == 'n')
                                let old_col = old_col + 2
                        else
                                let old_col = old_col + 3
                        endif
                        call cursor(line_n, old_col)
                endif

                if (a:old_mode == 'i')
                        startinsert
                endif
        endif
endfunction

"" noremap <c-q> :call Toggle_comment("n")<CR>
"" inoremap <c-q> <Esc>:call Toggle_comment("i")"<CR>


filetype plugin on
noremap <c-q> :call NERDComment('n','toggle')<CR>
inoremap <c-q> <Esc>:call NERDComment('n','toggle')<CR>i


" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>



" set relative line num
set rnu

" set line num
set nu
