"NerdTree
nmap <Leader>nt :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
"let g:NERDTreeMinimalUI=1

"Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp!<CR>
nmap <leader>2 :bn!<CR>
nmap <C-q> :bd!<CR>

"EasyMotion
nmap <Leader>s <Plug>(easymotion-s2)

"Nerdcommenter
vmap <C-c> <Plug>NERDCommenterToggle<CR>gv
"Mapping to reload config
nmap <leader>w :w <CR>
nmap <leader>q :q <CR>
nmap <leader>t :q! <CR>
nmap <leader>r :saveas 

"scrolling
nnoremap <C-j> 5<C-e>
nnoremap <C-k> 5<C-y>
vmap <C-j> 5j
vmap <C-k> 5k
vmap J 5j
vmap K 5k
nnoremap J 5j
nnoremap K 5k
nnoremap L 5l
nnoremap H 5h
nnoremap X hx

"borrado
inoremap Ñ <del>
nmap X hx
nmap <backspace> <left><delete>

"atajos
imap jk <ESC>
imap JK <ESC>
vmap <leader>jk <ESC>
nmap <S-i> :%s/

"Moverse insert mode
inoremap <C-f> <right>
inoremap <C-b> <left>
imap <C-n> <down>
imap <C-p> <up>

"terminal
nmap <C-t> :10sp term://zsh<CR>a
nmap <A-t> :10sp term://zsh<CR>a
"nmap <C-t> :vertical terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <F1> <C-\><C-n><C-w>w
tnoremap <F2> <C-\><C-n><C-w>q
nmap <silent> <F1> <C-w>wa

"Bash
autocmd filetype sh inoremap #! #!/bin/bash
"autocmd filetype html inoremap <CR> <CR> <left><CR><UP><TAB>

"copiado/pegado
vmap <leader>xyy "+y
vmap <leader>xpp "+p
nmap <leader>xpp "+p

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

let g:AutoPairsShortcutJump = ''
let g:AutoPairsShortcutToggle = ''

nnoremap <leader>r :w !python3.10<CR>
