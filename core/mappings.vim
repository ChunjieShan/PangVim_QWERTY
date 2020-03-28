" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>, ; as :
" let mapleader=" "
noremap ; :
nnoremap = nzz
nnoremap - Nzz

" ESC easy reach
inoremap jj <ESC>

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

" Open Startify
noremap <LEADER>st :Startify<CR>

" Insert Mode
nnoremap h i

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g

" Folding
noremap <silent> <LEADER>o za

" Open up lazygit
noremap \g :term lazygit<CR>
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>

" Open up pudb
noremap <c-d> :tab sp<CR>:term python3 -m pudb %<CR>
"noremap <f5> :tab sp<CR>:term python3 -m pudb %<CR>




" U/E keys for 5 times u/e (faster navigation)
noremap <silent> I 5k
noremap <silent> K 5j

" N key: go to the start of the line
noremap <silent> J 0
" I key: go to the end of the line
noremap <silent> L $

" Faster in-line navigation
noremap W 5w
noremap B 5b

" Ctrl + U or E will move up/down the view port without moving the cursor
noremap <C-I> 5<C-y>
noremap <C-K> 5<C-e>

nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)


" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A


" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>i <C-w>k
noremap <LEADER>k <C-w>j
noremap <LEADER>j <C-w>h
noremap <LEADER>l <C-w>l

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap si :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sj :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap ti :tabe<CR>
" Move around tabs with tn and ti
noremap tj :-tabnext<CR>
noremap tl :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmj :-tabmove<CR>
noremap tml :+tabmove<CR>


" ===
" === Markdown Settings
" ===
" Snippets
source ~/.config/nvim/md-snippets.vim
" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell


" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Move the next character to the end of the line with ctrl+9
inoremap <C-u> <ESC>lx$p

" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +3<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press ` to change case (instead of ~)
noremap ` ~

noremap <C-c> zz

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" Call figlet
noremap tx :r !figlet

noremap <LEADER>- :lN<CR>
noremap <LEADER>= :lne<CR>

" find and replace
noremap \s :%s//g<left><left>
