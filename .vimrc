let encoding='zh_CN.utf-8'
let termencoding='zh_CN.utf-8'
let mapleader=","
set hlsearch            "高亮度反白   
set backspace=2         "可随时用退格键删除   
set autoindent          "自劢缩排   
"set ruler               "可显示最后一行癿状态   
set showmode            "左下角那一行癿状态   
set nu                  "可以在每一行癿最前面显示行号啦！   
set bg=dark             "显示丌同癿底色色调   
syntax on               "迚行语法检验，颜色显示。


set nocompatible               " be iMproved
filetype off                   " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
 
" My Bundles here:
"
"


" original repos on github
Plugin 'marijnh/tern_for_vim'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
 
filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
"

Bundle 'scrooloose/nerdtree'
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" 主题 molokai
Bundle 'tomasr/molokai'
let g:molokai_original = 1
" 配色方案
set background=dark
set t_Co=256
colorscheme molokai
hi Normal  ctermfg=252 ctermbg=none 


"标签导航，纬度和taglist不同
Bundle 'majutsushi/tagbar'
nmap <leader>tb :TagbarToggle<CR>  "    b 打开tagbar窗口
let g:tagbar_autofocus = 1




Bundle 'kien/ctrlp.vim'
"for file search ctrlp, 文件搜索

Plugin 'vim-airline/vim-airline-themes'
Bundle 'bling/vim-airline'


let g:airline_theme="luna" 

"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   
"
" 打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"  我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
 let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"
Bundle 'Lokaltog/vim-powerline'
"if want to use fancy,need to add font patch -> git clone git://gist.github.com/1630581.git ~/.fonts/ttf-dejavu-powerline
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'
"powerline{
 set guifont=PowerlineSymbols\ for\ Powerline
let g:Powerline_symbols = 'fancy'
"     "}


"for show no user whitespaces
Bundle 'bronson/vim-trailing-whitespace'
map <leader><space> :FixWhitespace<cr>    " +space去掉末尾空格



Bundle 'scrooloose/nerdcommenter'
let NERDSpaceDelims = 1

Bundle 'drmingdrmer/xptemplate'
Bundle 'Valloric/YouCompleteMe'
" YouCompleteMe
"let g:ycm_key_list_select_completion=['<c-n>']
"set completeopt=longset,menu
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=1	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
""nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
""在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
"跳转到
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
" "Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_compiler = 'g++'  "change the compiler to g++ to support c++11. 
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++' "set the options of g++ to suport 
