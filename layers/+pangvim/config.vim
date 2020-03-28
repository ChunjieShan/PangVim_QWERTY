" ===
" === THEME
" ===
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
hi NonText ctermfg=gray guifg=grey10
"hi SpecialKey ctermfg=blue guifg=grey70


" ===
" === SPACELINE.VIM
" ===
let g:spaceline_seperate_style= 'arrow-fade'
let g:spaceline_colorscheme = 'space'
let g:spaceline_line_symbol = 1


" ===
" === rainbow
" ===
let g:rainbow_active = 1


" ===
" === xtabline
" ===
nnoremap <LEADER>xt :Tabularize /
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
noremap to :XTabCycleMode<CR>
noremap \p :XTabInfo<CR>


" ===
" === Vista.vim
" ===
noremap <silent> T :Vista!!<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
function! NearestMethodOrFunction() abort
	return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


" ===
" === Undotree
" ===
noremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function! g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>UndotreePreviousState
endfunc

" ===
" === VIM-DASH
" ===
"
let g:dash_map = {
\ 'javascript': ['javascript', 'NodeJS'],
\ 'javascriptreact': ['react'],
\ 'html': ['html', 'svg'],
\ 'go' : 'Go',
\}
nnoremap <silent><leader>d :Dash<CR>


" ===
" === FZF
" ===
nnoremap <silent> <leader>fc :Colors<CR>
nnoremap <silent> <leader>bb :<C-u>FzfPreviewBuffers<CR>
nnoremap <silent> <leader>bB :<C-u>FzfPreviewAllBuffers<CR>
nnoremap <silent> <leader>ff :<C-u>FzfPreviewDirectoryFiles<CR>
nnoremap <silent> <leader>fr :<C-u>FzfPreviewProjectGrep
nnoremap <silent> <leader>fo :<C-u>FzfPreviewOldFiles<CR>
nnoremap <silent> <leader>fm :<C-u>FzfPreviewMruFiles<CR>
nnoremap <silent> <leader>fp :<C-u>FzfPreviewProjectFiles<CR>
nnoremap <silent> <leader>fP :<C-u>FzfPreviewFromResources project_mru git<CR>

" ===
" === VIM-EASY-ALIGN
" ===
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" ===
" === COC.NVIM
" ===

let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-flutter']
" Using CocList
" Show all diagnostics
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]	=~ '\s'
endfunction
inoremap <silent><expr> <Tab>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<Tab>" :
			\ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <silent> <leader>cd  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>cr  :<C-u>CocListResume<CR>
" Use `[c` and `]c` for navigate diagnostics
nmap <silent> ]c <Plug>(coc-diagnostic-prev)
nmap <silent> [c <Plug>(coc-diagnostic-next)
" Remap for rename current word
nmap <leader>cn <Plug>(coc-rename)
" Remap for format selected region
vmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)
" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K for show documentation in float window
nnoremap <silent> M :call CocActionAsync('doHover')<CR>
" use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gm <Plug>(coc-git-commit)
nnoremap <silent> <leader>cg  :<C-u>CocList --normal gstatus<CR>
" float window scroll
nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
" multiple cursors
nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <expr> <silent> <C-m> <SID>select_current_word()
xmap <silent> <C-d> <Plug>(coc-cursors-range)
" use normal command like `<leader>xi(`
nmap <leader>x  <Plug>(coc-cursors-operator)

function! s:select_current_word()
if !get(g:, 'coc_cursors_activated', 0)
	return "\<Plug>(coc-cursors-word)"
endif
return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

nnoremap <silent> <leader>cm ::CocSearch -w
nnoremap <silent> <leader>cw ::CocSearch
" use normal command like `<leader>xi(`
nmap <leader>x  <Plug>(coc-cursors-operator)
" coc-explorer
noremap <silent> tt :CocCommand explorer<CR>


" ===
" === MARKDOWN-PREVIEW
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1
			\ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" ===
" === EASY-MOTION
" ===
nmap <Leader><Leader>w <Plug>(easymotion-w)
nmap <Leader><Leader>f <Plug>(easymotion-f)
nmap <Leader><Leader>b <Plug>(easymotion-b)


" ===
" === VIM-WHICH-KEY
" ===
source $VIM_PATH/layers/+tools/whichkey/config.vim
let g:mapleader = "\<Space>"
let g:maplocalleader = '\'
nnoremap <silent> <Leader>      :<C-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<C-u>WhichKey  '\'<CR>
nnoremap <silent>[              :<C-u>WhichKey  '['<CR>
nnoremap <silent>]              :<C-u>WhichKey  ']'<CR>


" ===
" === CAW.VIM
" ===
function! InitCaw() abort
	if ! &l:modifiable
		silent! nunmap <buffer> <Leader>ci
		silent! xunmap <buffer> <Leader>ci
		silent! nunmap <buffer> <Leader>ci
		silent! xunmap <buffer> <Leader>ci
	else
		nmap <buffer> <Leader>ci <Plug>(caw:prefix)
		xmap <buffer> <Leader>ci <Plug>(caw:prefix)
		nmap <buffer> <Leader>ci <Plug>(caw:hatpos:toggle)
		xmap <buffer> <Leader>ci <Plug>(caw:hatpos:toggle)
	endif
endfunction
autocmd FileType * call InitCaw()
call InitCaw()


" ===
" === VIM-SMARTCHR
" ===
inoremap <expr> , smartchr#one_of(',', ',')
autocmd FileType go inoremap <buffer><expr> ;
		\ smartchr#loop(':=',';')
autocmd FileType go inoremap <buffer> <expr> .
	  \ smartchr#loop('.', '<-', '->','...')


" ===
" === QUICKRUN
" ===
nnoremap <silent> <localleader>r :QuickRun<CR>


" ===
" === AUTO-FORMAT
" ===
nnoremap \f :Autoformat<CR>
