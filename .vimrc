set guifont=Inconsolata\ 13
set guifontwide=WenQuanYi\ Micro\ Hei\ 12
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
" Plugin 'maralla/completor.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Bundle 'xuhdev/vim-latex-live-preview'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'VimIM'
Bundle 'luochen1990/rainbow'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" VimIM
let g:Vimim_cloud=-1

" Markdown Preview
let g:mkdp_path_to_chrome = "google-chrome"
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）

let g:mkdp_auto_start = 1
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
" markdown 文件的时候打开一次

let g:mkdp_auto_open = 0
" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
" 览窗口

let g:mkdp_auto_close = 0
" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
" 自动关闭预览窗口

let g:mkdp_refresh_slow = 1
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
" 更新预览

" Latex Live Preview
" autocmd Filetype tex setl updatetime=1000

" Air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" Nerd-Tree
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

" Tag-Bar
let g:tagbar_width=30                    "窗口宽度的设置
let g:tagbar_autofocus = 1
map <F3> :Tagbar<CR>

" completor
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
set completeopt-=preview

" Buffer
nnoremap <F11> :bp<CR>
nnoremap <F12> :bn<CR>

let g:solarized_termcolors=256
colorscheme solarized

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

syntax on " 自动语法高亮
colorscheme solarized " 设定配色方案

set number " 显示行号
set cursorline " 突出显示当前行

set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set et
set smarttab
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
" 不设定在插入状态无法用退格键和 Delete 键删除回车符

set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
"set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
"set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术

set foldlevelstart=99
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为
"set foldclose=all " 设置为自动关闭折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
