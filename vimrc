set nocompatible

" Initialisation de pathogen
" il est recommandé de désactiver d'abord la détection du filetype
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on

filetype plugin indent on
syntax on



" Raccourcis claviers quelques customisations
"
" pour un leader plus accessible (sans altgrrrrr)

let mapleader=","
nnoremap <Space> i_<Esc>r


"
"
" editer le vimrc rapidement
"
:nnoremap <leader>ev :split $MYVIMRC<cr>
" sourcer le vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr>


"
" Pour désactiver l'autocomplétion qui fout un peu la grouille
"
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_goto_definition_cmd = 'tabedit'
"
"     Déplacement dans les splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Thème de couleur par défaut
"
"   On doit forcer vim à utiliser 256 couleurs pour etre raccro avec le
"   terminal
if has('gui_running')

else
	set t_Co=256
endif
colorscheme desertink
"colorscheme zellner

" Quelques raccourcis utiles
"
map :tree :NERDTree
" Déplacer des lignes vers le bas / vers le haut
"
map - ddp
map _ ddkkp
"
" Navigation en mode insertion
imap <c-j> <esc>jli
imap <c-k> <esc>kli
imap <c-l> <esc>lli
imap <c-h> <esc>i

"
"
" Mise en majuscules d'un mot
"imap <c-u> <esc>bveUi
"nmap <c-u> bveU
" (trouver un nom de raccourci qui ne nique pas le scroll...)

"
" Sortir du mode insertion
inoremap <c-c> <nop>
inoremap jk <esc>

"
" Mettre en relif la ligne courante

set cursorline


" Plugin supertab
"
"
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Divers
"
" Menu des complétions possibles lorsque tab entré dans la ligne de commandes
set wildmenu
set nu

" Activer le retour à la ligne automatique au bout de la fenêtre (sans
" insertion de saut de ligne)

set wrap

set mouse=a	" activer la souris

" Pour agrandir et réduire plus facilement les splits : 
" Ctrl-W ++++++ Ctrl-W --------
" Ctrl-W >>>>>> Ctrl-W <<<<<<<
nmap <c-w>+ <c-w>5+<SID>ws
nmap <c-w>- <c-w>5-<SID>ws
nn <script> <SID>ws+ <C-W>5+<SID>ws
nn <script> <SID>ws- <C-W>5-<SID>ws
nmap <SID>ws <Nop> 

nmap <c-w>> <c-w>5><SID>ws
nmap <c-w>< <c-w>5<<SID>ws
nn <script> <SID>ws> <C-W>5><SID>ws
nn <script> <SID>ws< <C-W>5<<SID>ws
nmap <SID>ws <Nop>


" Configuration de pymode
"
let g:pymode_rope_autoimport = 1


" Navigation dans les buffers
"
"
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Mise entre guillemets simples / doubles
"
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" gvim specific options
"
if has('gui_running')
	set guioptions=i
	"
	" copier /coller contenu du presse papier système
	"
	:nnoremap <leader>C "+yy
	:nnoremap <leader>V "+p
	:xnoremap <leader>C "+y
	:vnoremap <leader>C "+y
endif



"
"
"
" Abbréviations utiles
"
iabbrev  coding # -*- coding: utf-8 -*-
