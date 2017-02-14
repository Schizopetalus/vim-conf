set nocompatible
"
" Initialisation de pathogen
" il est recommandé de désactiver d'abord la détection du filetype
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on

filetype plugin indent on
syntax on


" Pouvoir quitter un buffer non sauvé
set hidden


" Raccourcis claviers quelques customisations
"
" pour un leader plus accessible (sans altgrrrrr)

let mapleader=","
nnoremap <Space> i_<Esc>r

" Quelques raccourcis utiles
"
nnoremap <c-n>t :NERDTree<cr>
nnoremap <c-n>c :NERDTreeClose<cr>

nnoremap <c-n> <nop>
"
"
" editer le vimrc rapidement
"
nnoremap <leader>ev :split $MYVIMRC<cr>
" sourcer le vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Désactiver le bip et la visualbell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"
"     Déplacement dans les splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"
"
" Ouvrir un nouveau split en bas / à droite par défaut
set splitbelow
set splitright


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

" Déplacer des lignes vers le bas / vers le haut
"
map - ddp
map _ ddkkp

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


"
"Plugin Python-mode
"
"
" Pour désactiver l'autocomplétion qui fout un peu la grouille
"
let g:pymode_rope_complete_on_dot = 0
"let g:pymode_rope_goto_definition_cmd = 'tabedit'
" Pas de fenêtre ouverte lors de la vérification syntaxique
let g:pymode_lint_cwindow=0

" On ne veut pas les erreurs pep8 lors de la vérification syntaxique
let g:pymode_lint_checkers=['pyflakes','mccabe']
" commande utile : permet de fermer / réafficher le buffer courant (quand le
" vérification syntaxique se désamorce mystérieusement)
nnoremap rr :let courant=@% <cr>:bdelete % <cr>:execute "e "courant<cr>

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
" Ctrl-W >>>>>> Ctrl-W <<<<<<<
" Ctrl-W ++++++ Ctrl-W --------
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
	" fontes disponibles
	" Monospace\ 10   (+ Monospace\ Italic\ 10, Monospace\ Bold\ 10)
	" Andale\ Mono\ 10
	" LiberationMono\ 10
	" Courier\ New\ 10
	:set guifont=Courier\ New\ 11

endif



"
"
"
" Abbréviations utiles
"
iabbrev  coding # -*- coding: utf-8 -*-


" 
"
" NERDTree
"
let NERDTreeIgnore = ['\.pyc$']

