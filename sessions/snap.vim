" /home/merzisenh/local/config/vim-conf/sessions/snap.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 05 octobre 2016 at 08:41:17.
" Open this file in Vim and run :source % to restore your session.

set guioptions=
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'desertink' | colorscheme desertink | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/src/plugins/observation/views
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 snapshot.py
badd +0 ~/src/plugins/snow_science/snow_input/export_nivomet.py
badd +0 ~/src/plugins/observation/extractor.py
badd +0 ~/src/www/commonlibs/synopsis_timeseries_plugin_service.py
argglobal
silent! argdel *
argadd snapshot.py
set stal=2
edit ~/src/plugins/snow_science/snow_input/export_nivomet.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 103 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 103 + 119) / 239)
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
551
silent! normal! zo
555
silent! normal! zo
559
silent! normal! zo
let s:l = 571 - ((520 * winheight(0) + 37) / 75)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
571
normal! 0
wincmd w
argglobal
edit snapshot.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
31
silent! normal! zo
33
silent! normal! zo
52
silent! normal! zo
53
silent! normal! zo
56
silent! normal! zo
63
silent! normal! zo
78
silent! normal! zo
83
silent! normal! zo
110
silent! normal! zo
let s:l = 58 - ((56 * winheight(0) + 37) / 75)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 026|
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 103 + 119) / 239)
exe 'vert 3resize ' . ((&columns * 103 + 119) / 239)
tabedit ~/src/plugins/observation/extractor.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 86 - ((45 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
86
normal! 028|
tabnext 2
set stal=1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/src/plugins/observation/views
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 75|vert 1resize 31|2resize 75|vert 2resize 103|3resize 75|vert 3resize 103|
1wincmd w
tabnext 2
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
