"sett opp farger
:set t_Co=256
:colorscheme devbox-dark-256
:set background=dark
" Fjern toolbar i macvim:
if has("gui_running")
    set guioptions-=T
    :colorscheme desert
endif

let mapleader = ","
" shortcut for NERDTREE
nmap <leader>nt :NERDTreeToggle<cr>
" shortcut for FuzzyFinder
nmap <leader>o :FufFile<cr>

" shortcut for å navigere vinduer
noremap <silent> ,h :wincmd h<cr>
noremap <silent> ,l :wincmd l<cr>
noremap <silent> ,j :wincmd j<cr>
noremap <silent> ,k :wincmd k<cr>
"Tabnavigasjon
nmap <leader><Right> :tabnext<cr>
nmap <leader><Left> :tabprev<cr>

"Oppdater filer som er endret på disken
set autoread
set grepprg=grep\ -nH\ $*    
" Må til på grunn av pluginer.
:filetype plugin on
" highlighter søk (bruk * for å finne like ord)
:set nohlsearch
" Skru av softwrap
:set nowrap

" syntaks
:syntax on
:set autoindent
:set smartindent
" unngå for store tabber (shiftswiotch er for automatisk tabbing)
:set tabstop=4
:set shiftwidth=4
" beveg pointeren fritt, ikke bare der det er tekst
":set virtualedit=all
" viser matchende parenteser, måker, <>
:set showmatch
" Fyller ut matchende } en linje under, og hopper mellom - OBS: ødelegger i
" LaTeX 
:inoremap { {<Enter><Enter>}<Esc>ki

