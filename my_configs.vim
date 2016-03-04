source ~/linux_autosetup/cscope_maps.vim

autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <silent> <F8> :TlistToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set number
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set statusline=%<%f%=%([%{Tlist_Get_Tagname_By_Line()}]%)
set title titlestring=%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)
set cmdheight=1     " 2 doesn't seem to avoid 'press <Enter> to continue'
set shortmess=atI
set shm=at          " Short messages. Again, trying to avoid 'press <Enter>'
set laststatus=2    " Always show status line
set ruler           " Show column and line number in status line
set showmode        " Show insert, visual, or replace mode in cmd area
set scrolloff=4     " Scroll to show 4 lines above or below cursor
set noerrorbells    " Don't beep at me
set visualbell      " Don't beep on error
set autoread
set cc=80

set shiftwidth=4    " Number of spaces for autoindent

" Search stuff:
set ignorecase      " Ignore case during search
set smartcase       " Be case sensitive if mixed-case search term
set incsearch
set showmatch
set wildmenu

let Tlist_Process_File_Always = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
    
" Show long lines and trailing spaces
" CTRL-K -> for →
" CTRL-K .M for ·
" CTRL-K .3 for ⋯
" CTRL-K Tr for ▷
" CTRL-K >1 ›
" (use :dig for a list of diagraphs)
set list listchars=tab:››,extends:→,trail:·

source $HOME/cscope_maps.vim


" Indent guides
" https://github.com/nathanaelkane/vim-indent-guides
" Toggle with <Leader>ig
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=Grey25 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=Grey25 ctermbg=4
au VimEnter * IndentGuidesToggle


