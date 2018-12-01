"=========================================================================
"My vimrc
"=========================================================================

set nocompatible
filetype off

" For Vundle  ==========

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'inkarkat/vim-mark'
Plugin 'inkarkat/vim-ingo-library'
Plugin 'vim-scripts/python.vim'
"Plugin 'vim-scripts/Efficient-python-folding'
Plugin 'vim-scripts/python_fold'
Plugin 'fs111/pydoc.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

" Vundle end ==========

syntax on
"colorscheme molokai
set number
"set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
"set nobackup " 覆盖文件时不备份
"set autochdir " 自动切换当前目录为当前文件所在的目录
"filetype plugin indent on " 开启插件
"set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
"set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
"set t_vb= " 置空错误铃声的终端代码
" set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2 " 短暂跳转到匹配括号的时间
"set magic " 设置魔术
"set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
"set guioptions-=T " 隐藏工具栏
"set guioptions-=m " 隐藏菜单栏
set smartindent " 开启新行时使用智能自动缩进
"set backspace=indent,eol,start
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
"set foldenable " 开始折叠
"set foldmethod=syntax " 设置语法折叠
"set foldcolumn=0 " 设置折叠区域的宽度
"setlocal foldlevel=1 " 设置折叠层数为
" set foldclose=all " 设置为自动关闭折叠
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠

set tags+=tags;$HOME

"Pydoc conf
let g:pydoc_open_cmd = 'vsplit'
