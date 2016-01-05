set nocompatible

" Initialisation de pathogen
" il est recommandé de désactiver d'abord la détection du filetype
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on

filetype plugin indent on
syntax on

" Pour désactiver l'autocomplétion qui fout un peu la grouille
"
let g:pymode_rope_complete_on_dot = 0


" Raccourcis claviers quelques customisations
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
set t_Co=256
colorscheme railscasts

" Quelques raccourcis utiles
"
:map :tree :NERDTree


" Plugin supertab
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

