"   # 在vim的正则表达式中， + 和 | 都必须加转义符 \\
"   # 小心，这和perl不一样！
"   /fred\\+/      : 匹配fred或freddy但是不匹配free
"   ----------------------------------------
"   # \\v ，或叫做very magic (通常都是这么叫)可以取消转义符
"   /codes\\(\\n\\|\\s\\)*where  : 普通的正则表达式
"   /\\vcodes(\\n|\\s)*where   : very magic，| 不用加 \\ 了！\r\n----------------------------------------
"   # 把东西送到命令行/搜索行
"   <C-R><C-W>              : 送一个狭义词
"   <C-R><C-A>              : 送一个广义词
"   <C-R>-                  : 送一个小型删除寄存器register
"   <C-R>[0-9a-z]           : 送一个命名寄存器register
"   <C-R>%                  : 送文件名过去 (#也行)
"
"   ) 下一句
"   ( 上一句
"   } 下一段
"   { 上一段
"   ]] 下一节
"   [[ 上一节
"   0 行的开头
"   $ 行的末尾
"   ^ 行的第一个非空白字符
"   + 下一行的开头
"   - 上一行的开
"   (空格) 下一个字符
"   (回车) 下一行
"   / 向前搜索
"   ? 向后搜索
"   % 查找当前小(中,大)括号的匹配字符
"   , 逆向重复上一个f,F,t或T操作
"   ; 重复上一个f,F,t或T操作
"   . 重复上一个操作
"   ` 转到标记处
"   \' 转到标记所在行的开头
"   `` 查找前回到上一个做标记的地方
"   \'\' 查找前回到上一个做标记所在行的开头
"   ~ 切换字符的大小写
"   \" 保存到寄存器中
"   !! 重复上一次SHELL命令
"   ! 把后面的文本送给命令, 取代输出(例如, !}fmt把当前的段落
"   送给命令fmt处理,然后用fmt返回的东西替换输出.)
"   &gt;&gt; 右移当前段落一个移动宽度(shiftwidth)
"   &lt;&lt; 左移当前段落一个移动宽(shiftwidth)
"   &gt;% 从当前到匹配小(中,大)括号之间的文本右移
"   &lt;% 从当前到匹配小(中,大)括号之间的文本左移
"   (似乎漏了一个符号|, 移动到某一列----译注)
"   pl:显示文件结构 fl:显示目录结构
"   viw 选中一个单词 yiw 复制一个单词
"   :reg 显示剪贴板
"   + 是系统剪切板
"   a 在当前位置之后添加
"   A 在当前行的末尾添加
"   ^a 没有使用
"   b 上一个单词的开头
"   B 上一个单词的开头,忽略标点符号
"   ^b 上移一屏
"   c 覆盖...
"   C 覆盖到行末尾
"   ^c 终止插入模式,在命令模式没有用
"   d 删除...
"   D 删除到行末尾
"   \r\n<P>^d 下移半屏，如果在插入模式下则移到上一个移动宽度（ShiftTab)处
"   e 单词的末尾
"   E 单词的末尾,忽略标点符号
"   ^e 屏幕下卷一行
"   f 查找...
"   F 向后查找...
"   ^f 下移一屏
"   g 未用
"   G ...跳至[缺省是到文件末尾]
"   ^g 显示状态栏
"   h 左移
"   H 屏幕上的第一行
"   ^h 在插入模式下是退格,命令模式下是左移
"   i 在当前的位置前面插入
"   I 在本行的第一个非空白字符前面插入
"   ^i 插入模式下是制表键,命令模式下未用
"   j 下移
"   J 把下一行合并到本行
"   ^j 命令模式下是下移,插入模式下是建一个新行
"   k 上移
"   K 未用
"   ^k 未用
"   l 右移
"   L 屏幕中的最后一行
"   ^l 重绘屏
"   m 把当前位置标记到寄存器中
"   M 屏幕的中间行
"   ^m 回车
"   n 重复上次查找
"   N 逆向重复上次查找
"   ^n 命令模式下是下移
"   o 在当前行的下面建一个新行
"   O 在当前行的上面建一个新行
"   ^o 未用
"   p 在当前行的下面粘贴
"   (译注--应为在当前位置的后面粘贴)
"   P 在当前行的上面粘贴
"   (译注--应为在当前位置的前面粘贴)
"   ^p 命令模式下是上移
"   q 未用
"   Q 退出并且启动ex
"   ^q 未用
"   r 覆盖当前的字符
"   R 在插入模式下一直覆盖字符
"   ^r 在命令模式下面重绘屏幕
"   s 替换
"   S 替换整行
"   t 到...
"   T 向后到...
"   ^t 移到下一个移动宽度(shifttab)处
"   u 撤消上一次操
"   U 撤消对本行的所有修改
"   ^u 上移半屏
"   v 未用
"   V 未用
"   ^v 未用
"   w 下一个单词的开头
"   W 下一个单词的开头,忽略标点符号
"   ^w 命令模式下未用,在插入模式下是到上一个单词的开头处
"   x 删除当前字符
"   X 删除前一个字符
"   ^x 未用
"   y 复制...
"   Y 复制整行
"   ^y 屏幕上卷一行
"   z 重新配置当前行周围的屏幕
"   ZZ 保存之后退出
"   ^z 未用
"   (译注--在命令模式下,^z执行了UNIX暂停操作)
"   6.1 - 命令模式的输入选项(:命令)
"   (注: 这不是一个规范的列表,, 我只是列出了一些最重要的命令)
"   :r &lt;文件&gt; 把&lt;文件&gt;读入到当前文档
"   :r !&lt;命令&gt; 把&lt;命令&gt;的输出插入到当前文本中
"   :nr &lt;文件&gt; 把&lt;文件&gt;插入到第n行
"   :!&lt;命令&gt; 运行&lt;命令&gt;,然后返回
"   :sh 转到SHELL
"   :so &lt;文件&gt; 读取&lt;文件&gt;,再执行文件里面的命令
"   (译注--文件中的命令应该都是一些ex命令)
"   保存之后退出
"   :wq 保存之后退出
"   :l1,l2w &lt;文件&gt;把第l1和第l2行之间的文本写到&lt;文件&gt;中去,如果没有指定&lt;文件&gt;,
"   vi就假定是当前文件,如果没有指定l1,l2,就假定是整个文件(就成了:w)
"   :w &gt;&gt; &lt;文&gt; 添加到&lt;文件&gt;末尾. 也可以使用行号
"   :w! 覆盖当前文件
"   :q 退出
"   :q! 不存盘就退出
"   :e &lt;文件&gt; 不离开vi编辑&lt;文件&gt;
"   :e! 重新编辑当前文件,忽略所有的修改
"   :n 编辑下一个文件
"   :e +n &lt;文件&gt; 从第n行开始编辑&lt;文件&gt;,如果超过了末尾,就从末尾开始编辑
"   :e# 编辑替换文件(如果使用了命令:e&lt;文件&gt;,替换文件就指的是原始文件)
"   :args 显示所有要编辑的文件
"   :rew 重新回到第一个编辑的文档
"   :map m n 创建一个宏(使 m 做 n)
"   :map! m n 创建一个插入模式的宏(使 m 做 n)
"   :unmap m 删除宏m
"   :unmap! m 删除插入模式的宏m
"   :ab &lt;1&gt; &lt;2&gt; 缩写,敲&lt;1&gt;的时候&lt;2&gt;取代
"   :unab &lt;1&gt; 取消缩写&lt;1&gt;
" -----------------------------------------------------------------------------
"  < 判断操作系统是否是 Windows 还是 Linux >
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif

"  < 判断是终端还是 Gvim >
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif

"查找并切换到.git目录
let g:isGit = 0
function! ToGitDir() 
        cd %:p:h
        let l:deeps = 5
        while l:deeps > 1
            let l:deeps = l:deeps -1
            if filereadable("./.git/config")
                let g:isGit = 1
                break          
            else
                cd ..
            endif           
        endwhile

        if l:deeps <=1          
            cd %:p:h
            let g:isGit = 0
        endif
endfunction

" -----------------------------------------------------------------------------
"  < Windows Gvim 默认配置> 做了一点修改
" -----------------------------------------------------------------------------
"if (g:iswindows && g:isGUI)
if g:iswindows
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
    set diffexpr=MyDiff()

    function! MyDiff()
        let opt = '-a --binary '
        if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
        if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
        let arg1 = v:fname_in
        if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
        let arg2 = v:fname_new
        if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
        let arg3 = v:fname_out
        if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
        let eq = ''
        if $VIMRUNTIME =~ ' '
            if &sh =~ '\<cmd'
                let cmd = '"' . $VIMRUNTIME . '\diff"'
                let eq = '""'
            else
                let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
            endif
        else
            let cmd = $VIMRUNTIME . '\diff'
        endif
        silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
    endfunction
endif




"  -----------------------------------------------------------------------------
"  < :set 设置 >
" -----------------------------------------------------------------------------
"   magic magic 可以使用更多的正规表达式
"   mesg mesg 允许向终端发送消息
"   number (nu) nonumber 显示行号
"   open open 允许开放和可视化
"   optimize (opt) optimize 优化吞吐量,打印时不发回车
"   paragraphs= (para=) IPLPPPQPPLIbp 设置{ &amp; }的分界符
"   prompt prompt 命令模式下的输入给出:的提示符
"   readonly (ro) noro 除非用!号否则不准保存文件
"   redraw noredraw 当编辑的时候重绘屏幕
"   remap remap 允许宏指向其他的宏
"   report= 5 如果影响的行数&gt;这个数的话就报告
"   scroll 1/2 window 下卷屏幕时滚动屏幕的数目,
"   同样这也z命令输出的行数(z 输出2倍滚屏的大小)
"   sections= SHNHH HU 定义节的末尾(当使用命令[[ 和 ]] 时)
"   shell= (sh=) /bin/sh 缺省的SHELL,如果设置了环境变量SHELL的话,就使用变量
"   shiftwidth= (sw=) 8 当使用移动(shift)命令时移动的字符数
"   showmatch (sm) nosm 显示{, }, (, , [, 或者 ] 的匹配情况
"   showmode noshowmode 显示你处在什么模式下面
"   slowopen (slow) 插入之后不要立刻更新显示
"   tabstop= (ts=) 8 设置制表停止位(tabstop)的长度
"   taglength= (tl=) 0 重要标记的字符个数(0表示所有的字符)
"   tags= tag, /usr/lib/tags 定义包含标记的文件路
"   term= 设置终端类型
"   terse noterse 显示简短的错误信息
"   timeout (to) timeout 一秒钟后键盘映射超时
"   ttytype= 设置终端类型
"   warn warn 显示\"No write since last change\"信息
"   window= (w=) 可视模式下窗口的行数
"   wrapmargin= (wm=) 0 右边距,大于0的话最右边的单词将折行,留出n个空白位置
"   wrapscan (ws) ws 查找到文件尾后再重头开始
"   writeany (wa) nowa 可以保存到任意一个文件去
"   \r\n<P>(译注--这些选项在各种vi版本中都基本上大同小异,以SunOS带的vi为例,它没有这里列
"   出来的open选项, scroll的参数值也不同,还多出来一些选项,如flash,modelines,
"   novice,tagstack等等)

" =============================================================================
"                            < 系统配置 >
" =============================================================================
" -----------------------------------------------------------------------------
"  < 编写文件时的配置 >
" -----------------------------------------------------------------------------
filetype on                                         "启用文件类型侦测
filetype plugin on                                  "针对不同的文件类型加载对应的插件
filetype plugin indent on                           "启用缩进

set iskeyword+=_,$,@,%,#,-          " 带有如下符号的单词不要被换行分割

"缩进设置
set tabstop=4                                       "设置制表符Tab键      宽度
set softtabstop=4                                   "设置软制表符   宽度
set shiftwidth=4                                    "换行时自动缩进 宽度
set expandtab                                       "将Tab键转换为空格
" 在行和段开始处使用制表符
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度
set backspace=indent,eol,start
"indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
"eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol。
"start：要想删除此次插入前的输入，需设置这个。
autocmd! FileType Makefile set noexpandtab

set smartindent                                       "为C程序提供 智能自动缩进
set autoindent        " 继承前一行的缩进方式 设置自动对齐(缩进) 使用 noautoindent 取消设置
set cindent            " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     "设置C/C++语言的具体缩进方式
" C/C++ specific settings
autocmd FileType c,cpp  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30

" 补全时忽略这些忽略文件
set wildignore=*.o,*~,*.pyc,*.class,*.swp,*.obj,*.bak,*.exe

set copyindent		" copy the previous indentation on autoindenting

"开启默认omni complete自动补全 快捷键 搜索补全<c-x><c-o> 自动补全<C-n>
"set ofu=syntaxcomplete#Complete
"set omnifunc=syntaxcomplete#Complete
"set omnifunc=omni
" 自动补全配置让Vim补全菜单行为跟IDE一致
"set completeopt=longest,menu

set wildchar=<TAB>	" start wild expansion in the command line using <TAB>

" 增强模式中的命令行 自动完成操作
set wildmenu            " wild char completion men

set nofoldenable                                      "关闭折叠
set foldmethod=indent
"manual            手工定义折叠
"indent            更多的缩进表示更高级别的折叠
"expr              用表达式来定义折叠
"syntax            用语法高亮来定义折叠
"diff              对没有更改的文本进行折叠
"marker            对文中的标志折叠

set autoread         " 当文件在外部被修改，自动加载文件
set autowrite        " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。

set autochdir       "自动切换当前目录为当前文件所在的目录

"不用altkeys映射到窗口列表
set winaltkeys=no

" 文件设置
set writebackup                             "保存文件前建立备份，保存成功后删除该备份
set nobackup                                "设置无备份文件
set noswapfile                              "设置无临时文件
set linebreak                               " 整词换行
set whichwrap=b,s,<,>,[,]   " 光标从行首和行末时可以跳到另一行去

set browsedir=current    "设置文件浏览使用的目录
"注：
"last 使用文件浏览器最近访问相同的目录。
"buffer 使用相关缓冲区的目录。
"current 使用当前目录。
"{path} 使用指定目录。

" Remember info about open buffers on close"
set viminfo^=%

" 保存全局变量
"set viminfo+=!

" 与windows共享剪贴板  yank to the system register (*)
set clipboard+=unnamed

" 优化大文件编辑
let g:LargeFile=10

"历史记录
set history=50        " set command history to 50    "历史记录50条


" 高亮字符，让其不受80列限制
highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
match OverLength '\%81v.*'


" -----------------------------------------------------------------------------
"                       < 界面配置 >
" -----------------------------------------------------------------------------
set number                                            "显示行号
set cmdheight=1                                       "设置命令行的高度为2，默认为1

"set cursorcolumn                                      "突出显示列
set cursorline                                        "突出显示当前行

set nowrap                                            "设置不自动换行
set shortmess=atI                                     "去掉欢迎界面

set linespace=0                  " 字符间插入的像素行数目

set whichwrap+=<,>,h,l  " 允许backspace和光标键跨越行边界

"--搜索设置--
set incsearch       " 实时匹配
"set noincsearch

"set hlsearch        " 高亮搜索
set nohlsearch
set ignorecase      "忽略大小写
set smartcase       "如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用

set showmatch        " 高亮显示匹配的括号
set matchtime=5      " 匹配括号高亮的时间（单位是十分之一秒）

"set previewwindow               " 标识预览窗口(一定不要开启 与airline冲突)
set splitright                  " 新分割窗口在右边
"set splitbelow                 " 新分割窗口在下边
set fillchars=vert:\ ,stl:\ ,stlnc:\ " 在被分割的窗口间显示空白，便于阅读

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"--状态行设置--
set laststatus=2     " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set ruler            " 显示右下角的状态 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。
" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"--命令行设置--
set showcmd             " 命令行显示输入的命令(共享外部剪贴板)
set showmode            " 命令行显示vim当前模式


" 设置 gvim 窗口初始位置及大小
if g:isGUI
    "autocmd guienter * simalt ~x                     "窗口启动时自动最大化
    "winpos 100 10                                     "指定窗口出现的位置，坐标原点在屏幕左上角
    "set lines=38 columns=120                          "指定窗口大小，lines为高度，columns为宽度
endif

" 设置代码配色方案
if g:isGUI
    colorscheme Tomorrow-Night              "gvim配色方案
else
    colorscheme Tomorrow-Night-Eighties               "终端配色方案
endif

" <Ctrl + F11> 切换显示/隐藏菜单栏、工具栏、滚动条，
if g:isGUI
    "菜单栏
    set guioptions-=m
    "导航栏
    set guioptions-=T
    "右边滚动条
    set guioptions+=r
    "左边滚动条
    set guioptions-=L
    "水平滚动条
    set guioptions-=b
    nnoremap <silent> <c-F11> :if &guioptions =~# 'm' <Bar>
        \set guioptions-=m <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=L <Bar>
        \set guioptions-=b <Bar>
    \else <Bar>
        \set guioptions+=m <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=r <Bar>
        \set guioptions+=L <Bar>
    \endif<CR>
endif
" -----------------------------------------------------------------------------
"                        < 编码配置 >
" -----------------------------------------------------------------------------
" 注：使用utf-8格式后，软件与程序源码、文件路径不能有中文，否则报错
set encoding=utf-8                                    "设置gvim内部编码，默认不更改
set fileencoding=utf-8                                "设置当前文件编码，可以更改，如：gbk（同cp936）   

"设置支持打开的文件的编码
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1,gb18030,big5,euc-jp,euc-kr

" 文件格式，默认 ffs=dos,unix
set fileformat=unix                                   "设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型
"不明字符用双字节表示
set ambiwidth=double

if g:iswindows
"设置字体:字号（字体名称空格用下划线代替<N）
    set guifont=DejaVu_Sans_Mono_for_Powerline:h12:cANSI
"set guifont=Consolas_for_Powerline_FixedD:h9
else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
endif

"if (g:iswindows && g:isGUI)
if g:iswindows

        "解决菜单乱码
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim

      "解决consle输出乱码
      language messages zh_CN.utf-8

      "解决gvim不乱码，但vim乱码
      set termencoding=chinese
    
      set langmenu=zh_CN.UTF-8

        "colorscheme molokai
        "set term=xterm
        "set t_Co=256

else
    if g:isGUI
        " Source a global configuration file if available
        if filereadable("/etc/vim/gvimrc.local")
            source /etc/vim/gvimrc.local
        endif
    else
        " This line should not be removed as it ensures that various options are
        " properly set to work with the Vim-related packages available in Debian.
		"此处会修改vim runtimepath rtp 所以放到Bundle前面
        runtime! debian.vim

        set termencoding=utf-8          "解决Linux终端乱码
        "set mouse=a                    " 在任何模式下启用鼠标
        set t_Co=256                    " 在终端启用256色
        " fixed the arrow key problems caused by AutoClose
        set term=linux
        "imap OA <ESC>ki
        "imap OB <ESC>ji
        "imap OC <ESC>li
        "imap OD <ESC>hi

        nmap OA k
        nmap OB j
        nmap OC l
        nmap OD h 

        " Source a global configuration file if available
        if filereadable("/etc/vim/vimrc.local")
            source /etc/vim/vimrc.local
        endif
    endif
endif

" --- AutoClose - Inserts matching bracket, paren, brace or quote 

" -----------------------------------------------------------------------------
"                     < windows 下解决 Quickfix 乱码问题 >
" -----------------------------------------------------------------------------
" windows 默认编码为 cp936，而 Gvim(Vim) 内部编码为 utf-8，所以常常输出为乱码
" 以下代码可以将编码为 cp936 的输出信息转换为 utf-8 编码，以解决输出乱码问题
" 但好像只对输出信息全部为中文才有满意的效果，如果输出信息是中英混合的，那可能
" 不成功，会造成其中一种语言乱码，输出信息全部为英文的好像不会乱码
" 如果输出信息为乱码的可以试一下下面的代码，如果不行就还是给它注释掉

" if g:iswindows
"     function QfMakeConv()
"         let qflist = getqflist()
"         for i in qflist
"            let i.text = iconv(i.text, "cp936", "utf-8")
"         endfor
"         call setqflist(qflist)
"      endfunction
"      autocmd QuickfixCmdPost make call QfMakeConv()
" endif
" -----------------------------------------------------------------------------
"  < 其它配置 >
" -----------------------------------------------------------------------------
" set vb t_vb=                                "关闭提示音
" =============================================================================
"                          << 快捷键 >>
" =============================================================================
" 注：上面配置中的"<Leader>"在本软件中设置为"\"键（引号里的反斜杠），如<Leader>t
" 指在常规模式下按"\"键加"t"键，这里不是同时按，而是先按"\"键后按"t"键，间隔在一
" 秒内，而<Leader>cs是先按"\"键再按"c"又再按"s"键；如要修改"<leader>"键，可以把
" 下面的设置取消注释，并修改双引号中的键为你想要的，如修改为逗号键。

" let mapleader = ";"
" 
" :marks
" :reg
" :buffers :ls
" :tabs
" :tags
" :clist :cw
"
" 常规模式下用空格键来开关光标行所在折叠（注：zR 展开所有折叠，zM 关闭所有折叠）
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"从系统剪切板中复制，剪切，粘贴
"noremap <F7> "+y
"noremap <F8> "+x
"noremap <F9> "+p
"<F1> 查看Vim的runtime路径
nnoremap <F1> :set rtp<CR>
"nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :exec("NERDTree ".expand('%:h'))<CR>
nnoremap <F3> :TagbarToggle<CR>
nnoremap <F4> :SrcExplToggle<CR>

" CTRL+ F4 强制关闭当前窗口
nnoremap <C-F4> :close!<CR>
inoremap <C-F4> <C-O>:close!<CR>

"<F5> 一键分屏
"nnoremap <F5> :vertical ba<CR>
"<Ctrl + F5>显示可打印字符开关
nnoremap <silent> <C-F5> :set list! list?<CR>

"<Ctrl + F6> 切换行号显示模式
nnoremap <silent> <C-F6> :set relativenumber!<CR>

"<Ctrl + F7>自动换行
nnoremap <silent> <C-F7> :set wrap!<CR>

"<Ctrl + F8> 切换语法高亮
nnoremap <silent> <C-F8> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

nmap <F10> :call UpdateCtags()<CR>
" F10 to run python script
nnoremap <buffer> <C-F10> :exec '!python' shellescape(@%, 1)<cr>

"<F12>窗口最大化
nnoremap <silent> <F12> <c-w>=
nnoremap <silent> <C-F12> <c-w>_<c-w>\|

nnoremap <silent> <F5> :cw<CR>
nnoremap <silent> <F6> :cp<CR>      "QuickFix窗口中上一条记录
nnoremap <silent> <F7> :cn<CR>      "QuickFix窗口中下一条记录
nnoremap <silent> <F8> :cclose<CR>
" open the error console
map <leader>cc :botright cope<CR> 
" move to next error
map <leader>] :cn<CR>
" move to the prev error
map <leader>[ :cp<CR
"--------------------------------------------------------------------------- 
" Tip #382: Search for <cword> and replace with input() in all open buffers 
"--------------------------------------------------------------------------- 
fun! Replace() 
    let s:word = input("Replace " . expand('<cword>') . " with:") 
    :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge' 
    :unlet! s:word 
endfun 

"replace the current word in all opened buffers
map <leader>r :call Replace()<CR>

"--------------------------------------------------------------
"搜索居中
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" 去掉搜索高亮
nnoremap  <leader>/ :nohls<CR>
" 上下移动一行文字
nnoremap <C-S-Up> mz:m-2<cr>`z
nnoremap <C-S-Down> mz:m+<cr>`z
vnoremap <C-S-Down> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <C-S-Up> :m'<-2<cr>`>my`<mzgv`yo`z

"窗口切换<Alt+>
"noremap <M-Up> <c-w>k
"noremap <M-Down> <c-w>j
"noremap <M-Left> <c-w>h
"noremap <C-Right> <c-w>l
noremap <C-Up> <c-w>k
noremap <C-Down> <c-w>j
noremap <C-Left> <c-w>h
noremap <C-Right> <c-w>l
noremap <C-k> <c-w>k
noremap <C-j> <c-w>j
noremap <C-h> <c-w>h
noremap <C-l> <c-w>l
"窗口切换并最大化
"noremap <c-s-k> <c-w>k<c-w>_<c-w>\|
"noremap <c-s-j> <c-w>j<c-w>_<c-w>\|
"noremap <c-s-h> <c-w>h<c-w>_<c-w>\|
"noremap <c-s-l> <c-w>l<c-w>_<c-w>\|

" --- move around splits {
" move to and maximize the below split 
nnoremap <C-J> <C-W>j<C-W>_
" move to and maximize the above split 
nnoremap <C-K> <C-W>k<C-W>_
" move to and maximize the left split 
nnoremap <c-h> <c-w>h<c-w><bar>
" move to and maximize the right split  
nnoremap <c-l> <c-w>l<c-w><bar>
set wmw=0                     " set the min width of a window to 0 so we can maximize others 
set wmh=0                     " set the min height of a window to 0 so we can maximize others
" }

" 把空格键映射成:
nnoremap <space> :

nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

" :cd. change working directory to that of the current file
cmap cd. lcd %:p:h

" Writing Restructured Text (Sphinx Documentation) {
   " Ctrl-u 1:    underline Parts w/ #'s
   noremap  <C-u>1 yyPVr#yyjp
   inoremap <C-u>1 <esc>yyPVr#yyjpA
   " Ctrl-u 2:    underline Chapters w/ *'s
   noremap  <C-u>2 yyPVr*yyjp
   inoremap <C-u>2 <esc>yyPVr*yyjpA
   " Ctrl-u 3:    underline Section Level 1 w/ ='s
   noremap  <C-u>3 yypVr=
   inoremap <C-u>3 <esc>yypVr=A
   " Ctrl-u 4:    underline Section Level 2 w/ -'s
   noremap  <C-u>4 yypVr-
   inoremap <C-u>4 <esc>yypVr-A
   " Ctrl-u 5:    underline Section Level 3 w/ ^'s
   noremap  <C-u>5 yypVr^
   inoremap <C-u>5 <esc>yypVr^A
"}

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" 快速进入shell
nnoremap <silent><leader>sh :shell<cr>

" 常规模式下输入 cS 清除行尾空格
nnoremap cS :%s/\s\+$//g<CR>:noh<CR>

" 常规模式下输入 cM 清除行尾 ^M (CR)符号[^M$][$]
nnoremap cM :%s/\\r$//g<CR>:noh<CR>

"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"系统默认自动补全 OmniCppComplete 配置
"使用pumvisible()来判断下拉菜单是否显示
"inoremap <expr> <CR>       pumvisible()?"\<C-Y>":"\<CR>"
inoremap <expr> <C-J>      pumvisible()?"\<C-n>":"\<C-X><C-O>"
inoremap <expr> <C-K>      pumvisible()?"\<C-p>":"\<C-K>"
inoremap <expr> <C-U>      pumvisible()?"\<C-E>":"\<C-U>"
"如果下拉菜单弹出，回车映射为接受当前所选项目，否则，仍映射为回车；
"如果下拉菜单弹出，CTRL-J映射为在下拉菜单中向下翻页。否则映射为CTRL-X CTRL-O；
"如果下拉菜单弹出，CTRL-K映射为在下拉菜单中向上翻页，否则仍映射为CTRL-K；
"如果下拉菜单弹出，CTRL-U映射为CTRL-E，即停止补全，否则，仍映射为CTRL-U；

" --------tab/buffer相关

"Use arrow key to change buffer"
" TODO: 如何跳转到确定的buffer?
" :b 1 :b 2   :bf :bl
"alt+w强制关闭当前缓存
noremap <silent> ÷ :bd!<CR>
" normal模式下切换到确切的tab
noremap <leader>1 :b 1<CR>
noremap <leader>2 :b 2<CR>
noremap <leader>3 :b 3<CR>
noremap <leader>4 :b 4<CR>
noremap <leader>5 :b 5<CR>
noremap <leader>6 :b 6<CR>
noremap <leader>7 :b 7<CR>
noremap <leader>8 :b 8<CR>
noremap <leader>9 :b 9<CR>
noremap <leader>0 :blast<cr>
" Buffer切换
nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>

noremap <M-left> :bprevious<CR>
noremap <M-right> :bnext<CR>
" -----------------------------------------------------------------------------
"  <  tab 操作 >
" -----------------------------------------------------------------------------
" http://vim.wikia.com/wiki/Alternative_tab_navigation
" http://stackoverflow.com/questions/2005214/switching-to-a-particular-tab-in-vim
" new tab
map <C-t><C-t> :tabnew<CR>
" close tab
map <C-t><C-w> :tabclose<CR> 
noremap <leader>th :tabfirst<cr>
noremap <leader>tl :tablast<cr>

"noremap <leader>tj :tabnext<cr>
"noremap <leader>tk :tabprev<cr>
"noremap <leader>tn :tabnext<cr>
"noremap <leader>tp :tabprev<cr>

"noremap <leader>te :tabedit<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabm<cr>
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
noremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
set winaltkeys=no
" 在文件名上按gf时，在新的tab中打开
noremap gf :tabnew <cfile><cr>
" alt+n 打开新tab
noremap î  :tabnew<cr>
" TODO: 配置成功这里, 切换更方便, 两个键
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" nnoremap <C-Left> :tabprevious<CR>
" nnoremap <C-Right> :tabnext<CR>

" normal模式下切换到确切的tab
"映射alt+{num}
noremap ± 1gt
noremap ² 2gt
noremap ³ 3gt
noremap ´ 4gt
noremap µ 5gt
noremap ¶ 6gt
noremap · 7gt
noremap ¸ 8gt
noremap ¹ 9gt
noremap ° :tablast<cr>

" toggles between the active and last active tab "
" the first tab is always 1 "
let g:last_active_tab = 1
" nnoremap <leader>gt :execute 'tabnext ' . g:last_active_tab<cr>
" nnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
" vnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
"nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
"vnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
autocmd TabLeave * let g:last_active_tab = tabpagenr()

"快捷键:
"ctrl+j 选择下一个补全
"ctrl+k 选择上一个补全
"
"ctrl+n 选择下一个补全
"ctrl+p 选择上一个补全
",gd  跳到声明位置, 仅 filetypes: c, cpp, objc, objcpp, python 有效(比较少用)

" alt + K 插入模式下光标向上移动
inoremap ë <Up>

" alt + J 插入模式下光标向下移动
inoremap ê <Down>

" alt + H 插入模式下光标向左移动
inoremap è <Left>

" alt + L 插入模式下光标向右移动
inoremap ì <Right>

inoremap {} {<CR>}<Up><End><CR>
inoremap .> ->

"alt+d 删除光标所在的单词
inoremap ä <esc>ebdei
" alt+s删除引号之间的字符串
inoremap ó <esc>di"i

" Ctrl-[ jump out of the tag stack (undo Ctrl-])
noremap <C-[> <ESC>:po<CR>

" ,g generates the header guard
map <leader>g :call IncludeGuard()<CR>
fun! IncludeGuard()
   let basename = substitute(bufname(""), '.*/', '', '')
   let guard = '_' . substitute(toupper(basename), '\.', '_', "H")
   call append(0, "#ifndef " . guard)
   call append(1, "#define " . guard)
   call append( line("$"), "#endif // for #ifndef " . guard)
endfun

" =============================================================================
"                          << 以下为常用工具配置 >>
" =============================================================================

" -----------------------------------------------------------------------------
"  < cscope 工具配置 >
" -----------------------------------------------------------------------------
" 用cscope自己的话说 - "你可以把它当做是超过频的ctags"
"   进入vim后第一件事是要把刚才生成的cscope文件导入到vim中来, 用下面的命令:
"   :cs add /home/wooin/vim71/cscope.out /home/wooin/vim71
"   上面这条命令很重要, 必须写全, 不能只写前半句:
"   :cs add /home/wooin/vim71/cscope.out
"   因为源码是多级目录的, 如果这样写, cscope是无法在子目录中的源码中工作的
"   cscope -Rbq -f path/cscope.out
"   0 或 s: 查找本 C 符号
"	1 或 g: 查找本定义
"	2 或 d: 查找本函数调用的函数
"	3 或 c: 查找调用本函数的函数
"	4 或 t: 查找本字符串
"	6 或 e: 查找本 egrep 模式
"	7 或 f: 查找本文件
"	8 或 i: 查找包含本文件的文件

"    $ cscope -Rbkq
"    这个命令会生成三个文件：cscope.out, cscope.in.out, cscope.po.out。
"    其中cscope.out是基本的符号索引，后两个文件是使用"-q"选项生成的，可以加快cscope的索引速度。上面命令的参数含义如下：
"    -R: 在生成索引文件时，搜索子目录树中的代码
"    -b: 只生成索引文件，不进入cscope的界面
"    -k: 在生成索引文件时，不搜索/usr/include目录
"    -q: 生成cscope.in.out和cscope.po.out文件，加快cscope的索引速度
"    -i: 如果保存文件列表的文件名不是cscope.files时，需要加此选项告诉cscope到哪儿去找源文件列表。可以使用"-"，表示由标准输入获得文件列表。
"    -I dir: 在-I选项指出的目录中查找头文件
"    -u: 扫描所有文件，重新生成交叉索引文件
"    -C: 在搜索时忽略大小写
"    -P path: 在以相对路径表示的文件前加上的path，这样，你不用切换到你数据库文件所在的目录也可以使用它了。

if has("cscope") 
"    "set csprg=/usr/bin/cscope   " 制定cscope命令
"    "ctags查找顺序，0表示先cscope数据库再标签文件，1表示先标签文件爱
"    "set csto=0
"    "优先查找Ctags数据库
"    set cscopetagorder=1
"    "把Cscope的查找结果 输出到quickfix窗口
"    set cscopequickfix=s-,c-,d-,i-,t-,e-
"    "使支持用 ctrl+]  和 ctrl+t 快捷键在代码间跳转
"    set cscopetag
"    " 同时搜索tag文件和cscope数据库
"    " set cst
"    set nocsverb
"    "如果当前目录下有cscope.out则加载进Vim
"    "if filereadable("cscope.out")
"    "    cs add cscope.out
"    "否则添加数据库环境中所指定的数据库到Vim
"    "elseif $cscope_db != ""
"    "    cs add $cscope_db
"    "endif
"    function! UpdateCscope()
"        call ToGitDir()
"        !cscope -Rbkq
"        cs add cscope.out
"        cs reset
"    endfunction
"    set cscopeverbose
"    "快捷键设置
"    " 查找符号
"    nnoremap <leader>css :cs find s <c-r>=expand("<cword>")<cr><cr>  " C symbol
"    nnoremap <leader>csg :cs find g <c-r>=expand("<cword>")<cr><cr>  " decsinition
"    nnoremap <leader>csd :cs find d <c-r>=expand("<cword>")<cr><cr>  " called 查找被这个函数调用的函数
"    nnoremap <leader>csc :cs find c <c-r>=expand("<cword>")<cr><cr>  " calling[引用] 查找调用这个函数的函数
"    nnoremap <leader>cst :cs find t <c-r>=expand("<cword>")<cr><cr>  " 查找这个字符串
"    nnoremap <leader>cse :cs find e <c-r>=expand("<cword>")<cr><cr>
"    nnoremap <leader>csf :cs find f <c-r>=expand("<cfile>")<cr><cr>  " 查找这个文件
"    nnoremap <leader>csi :cs find i <C-R>=expand("<cfile>")<CR><CR> :copen<CR><CR>
"    nnoremap <leader>csl :cs find i ^<c-r>=expand("<cfile>")<cr>$<cr> "查找#include这个文件的文件
"
"    nnoremap <C-\>w :cw<CR>                     "   :cw quickfix窗口看到所有查找结果
"    nnoremap <C-\>r :cs reset<CR>               "   重新初始化所有连接
"
"    "noremap <F4>:!cscope -Rbq<CR>:cs add ./cscope.out .<CR><CR><CR> :cs reset<CR>
"    nnoremap <F8> :call UpdateCscope()<CR>


endif

" -----------------------------------------------------------------------------
"  < ctags 工具配置 >
" -----------------------------------------------------------------------------
" 对浏览代码非常的方便,可以在函数,变量之间跳转等
" ctags --list-maps 查看支持的语音
set tags=./tags,./*/tags;                            "向上级目录递归查找tags文件（好像只有在windows下才有用）

set tags+=./../tags,../../tags,../../../tags,../../../../tags
if g:islinux
    set tags+=/usr/src/linux-2.6.35/tags,/usr/src/glibc-2.17/tags
endif
set tags+=$VIM,$VIMRUNTIME

function! UpdateCtags()
        call ToGitDir()
        !ctags -R --sort=yes --file-scope=yes --langmap=c:+.h --languages=Asm,Make,C,C++,C\#,Java,Python,sh,Vim,REXX,SQL --links=yes --c-kinds=+px --c++-kinds=+px --fields=+ainKsS --extra=+qf .
endfunction

"noremap <s-f12> :vsp <cr>:exec("tselect ".expand("<cword>"))<cr>
"noremap <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"ctrl-]不会自动列出，只会提示“找到 tag: 1 / 2 或更多”  要:tselect 才会列出所有项
"noremap <C-]> g<c-]>
"noremap <c-[> <c-t>

" -----------------------------------------------------------------------------
"  < 3 - gvimfullscreen 工具配置 > 请确保已安装了工具
" -----------------------------------------------------------------------------
" 用于 Windows Gvim 全屏窗口，可用 F11 切换
" 全屏后再隐藏菜单栏、工具栏、滚动条效果更好
if (g:iswindows && g:isGUI)
    noremap <F11> <Esc>:call libcallnr("gvimfullscreen.dll","ToggleFullScreen",0)<CR>
endif

" -----------------------------------------------------------------------------
"  < 4 - vimtweak 工具配置 > 请确保以已装了工具
" -----------------------------------------------------------------------------
" 这里只用于窗口透明与置顶
" 常规模式下 Ctrl + Up（上方向键） 增加不透明度，Ctrl + Down（下方向键） 减少不透明度，<Leader>t 窗口置顶与否切换
if (g:iswindows && g:isGUI)
    let g:Current_Alpha = 255
    let g:Top_Most = 0
    func! Alpha_add()
        let g:Current_Alpha = g:Current_Alpha + 10
        if g:Current_Alpha > 255
            let g:Current_Alpha = 255
        endif
        call libcallnr("vimtweak.dll","SetAlpha",g:Current_Alpha)
    endfunc
    func! Alpha_sub()
        let g:Current_Alpha = g:Current_Alpha - 10
        if g:Current_Alpha < 155
            let g:Current_Alpha = 155
        endif
        call libcallnr("vimtweak.dll","SetAlpha",g:Current_Alpha)
    endfunc
    func! Top_window()
        if  g:Top_Most == 0
            call libcallnr("vimtweak.dll","EnableTopMost",1)
            let g:Top_Most = 1
        else
            call libcallnr("vimtweak.dll","EnableTopMost",0)
            let g:Top_Most = 0
        endif
    endfunc

    "快捷键设置
    noremap <s-up> :call Alpha_add()<CR>
    noremap <s-down> :call Alpha_sub()<CR>
    noremap <leader>tw :call Top_window()<CR>
endif


" =============================================================================
"                          << vundle 插件管理工具配置  >>
" =============================================================================
" 用于更方便的管理vim插件，具体用法参考 :h vundle 帮助
" vundle工具安装方法为在终端输入如下命令
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" 如果想在 windows 安装就必需先安装 "git for window"，可查阅网上资料

set nocompatible                                      "禁用 Vi 兼容模式
filetype off                                          "禁用文件类型侦测

if g:islinux
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else
	if exists('$HOME/vimfiles')
		set rtp+=$HOME/vimfiles/bundle/vundle/
		call vundle#rc('$HOME/vimfiles/bundle/')
	else
		set rtp+=$VIM/vimfiles/bundle/vundle/
		call vundle#rc('$VIM/vimfiles/bundle/')
	endif
endif

" 使用Vundle来管理插件，这个必须要有。
Bundle 'gmarik/vundle'

" 以下为要安装或更新的插件，不同仓库都有（具体书写规范请参考帮助）

"GIT
"Bundle 'tpope/vim-git'
    "--- 状态栏显示git分支(master)
Bundle 'tpope/vim-fugitive'
    "--- 状态栏显示fit分支号
Bundle 'airblade/vim-gitgutter'

Bundle 'motemen/git-vim'
"Bundle 'mhinz/vim-signify'

"C/C++
"---
    "--- ex-project 和 nerdtree可以一起使用，两者可以无缝切换，用于项目树管理，各自有各自存在的理由。
"Bundle 'exvim/main'
"Plugin 'exvim/ex-config'
"Plugin 'exvim/ex-utility'
"Plugin 'exvim/ex-aftercolors'
"Plugin 'exvim/ex-vimentry'

"Plugin 'exvim/ex-project'
"Plugin 'exvim/ex-gsearch' " 用于全局搜索，这个比 ack 强大百倍，信我
"Plugin 'exvim/ex-tags' " 用于 ctags 相关的操作
"Plugin 'exvim/ex-symbol' " 将 ctags 的 tag 转换成一张列表，用于快速查找成员等操作
"Plugin 'exvim/ex-cscope' " cscope 相关操作
"Plugin 'exvim/ex-qfix' " quick-fix 相关操作
"Plugin 'exvim/ex-hierarchy' " 这个是神器，可以生成c++的类层次关系图。使用 graphviz 去绘制
"Plugin 'exvim/ex-tagbar'

Bundle 'a.vim'
Bundle 'std_c.zip'
	"--- 自动生成tags与cscope文件并连接
	"More convenience way to use ctags and cscope in vim
"Bundle 'ccvext.vim'
	"--- create cscope database and connect to existing proper database automatically.
Bundle 'sdlylshl/cscope.vim'

	"--- 显示层次的功能或使用cscope数据库文件调用树
	"--- 依赖::Cscope, Vim 7.xx
"Bundle 'vim-scripts/CCTree'

	"--- VIM 下的Source Insight
"Bundle 'wesleyche/SrcExpl'

	"--- 高亮C函数
Bundle 'cSyntaxAfter'


"Python
"Bundle 'jmcantrell/vim-virtualenv'

"HTML/CSS
"Bundle 'mattn/emmet-vim'

"shell
"Bundle 'edkolev/tmuxline.vim'
"Bundle 'Shougo/vimshell.vim'
"Bundle 'Shougo/vimproc.vim'
"Bundle 'edkolev/promptline.vim'

"org-mode
"Bundle 'jceb/vim-orgmode'
"Bundle 'hsitz/VimOrganizer'
"Bundle 'hughbien/org-vim'
"Bundle 'tpope/vim-speeddating'
"Bundle 'mattn/calendar-vim'
"Bundle 'dhruvasagar/vim-table-mode'

"语法检查 错误信息在左侧状态栏标注
"Bundle 'scrooloose/syntastic'

"自动补全

    "--- YouCompleteMe包含("clang_complete "AutoComplPop "Supertab "neocomplcache "jedi(对python的补全)
"Bundle 'Valloric/YouCompleteMe'

"Bundle 'exvim/ex-autocomplpop'

    "--- [太卡]neocomplcache对上下文进行索引，结果保存到缓存中
"Bundle 'Shougo/neocomplcache.vim'
    "--- lua
"Bundle 'Shougo/neocomplete.vim'

"--- [与系统omni重复]在输入变量名或路径名等符号中途按Tab键，就能得到以前输入过的符号列表，并通过Tab键循环选择。
"Bundle 'supertab'

	"--- [必备]类(class),结构(struct)和联合(union)补全 依赖:Ctags
Bundle 'OmniCppComplete'
	"--- Omni Completion for JAVA 依赖:Ctags
"Bundle 'vim-javacompleteex'


	"--- 自动括号补全
"Bundle 'Raimondi/delimitMate'
"Bundle 'docunext/closetag.vim'


"代码片段
"--- 宏定义补全 依赖:: Python 3.x
"Bundle 'SirVer/ultisnips'
"Bundle 'honza/vim-snippets'
    "--- Snippet 的几个方案 (单选)
" Bundle 'Shougo/neosnippet.vim'
" Bundle 'msanders/snipmate.vim'
" Bundle 'spf13/snipmate-snippets'
"
"代码
"Bundle 'taglist.vim'
Bundle 'majutsushi/tagbar'

"状态栏
if g:isGUI
    Bundle 'bling/vim-airline'
    "Bundle 'Lokaltog/vim-powerline'
    "Bundle 'Lokaltog/powerline-fonts'
    "Bundle 'itchyny/lightline.vim'
endif

"编辑
"--- 快速加环绕符
"Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-repeat'

"移动
	"--- 跳转到光标后任意位置
"Bundle 'Lokaltog/vim-easymotion'
	"--- 对%命令进行扩展使得能在嵌套标签和语句之间跳转
    " % 正向匹配      g% 反向匹配
    " [% 定位块首     ]% 定位块尾
"Bundle 'vim-scripts/matchit.zip'

"选中
"Bundle 'terryma/vim-expand-region'
"多光标多行编辑
Bundle 'terryma/vim-multiple-cursors'

"文件浏览
    "---  快速注释
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
"Bundle 'jistr/vim-nerdtree-tabs'


"Bundle 'jlanzarotta/bufexplorer'
"Bundle 'vim-scripts/minibufexplorerpp'
"Bundle 'ShowMarks'
"Bundle 'Mark--Karkat'


    "--- 模糊查找 依赖:vim-L9库
"Bundle 'clones/vim-l9'
"Bundle 'FuzzyFinder'
    "--- 依赖:python
"Bundle 'troydm/asyncfinder.vim'
"Bundle 'Shougo/unite.vim'
Bundle 'kien/ctrlp.vim'
"--- http://gnuwin32.sourceforge.net/packages/grep.htm (.../findutils.htm)
Bundle 'yegappan/grep'

if g:islinux
"--- 依赖: ACK2.x
"Bundle 'mileszs/ack.vim'
"Bundle 'petdance/ack2'
    "--- 依赖:ACK AG
"Bundle 'dyng/ctrlsf.vim'
endif
"中文帮助
Bundle 'asins/vimcdoc'
"其他
    "--- VIM 中文输入法(不会用)
"Bundle 'vim-scripts/VimIM'
"--- 括号显示增强
"Bundle 'kien/rainbow_parentheses.vim'
    "--- 括号自动配对
"Bundle 'jiangmiao/auto-pairs'

"Bundle 'Align'
	"--- 代码对齐
"Bundle 'godlygeek/tabular'

	"--- 快速跳转到TODO列表
Bundle 'vim-scripts/TaskList.vim'




"--- 撤销树Gundo.vim 依赖:python
"Bundle 'sjl/gundo.vim'

"Bundle 'Yggdroot/indentLine'
    "--- 显示文本文件的目录树和语法高亮
"Bundle 'TxtBrowser'
	"--- <c-w>o 在最大化与还原间切换
"Bundle 'ZoomWin'

"主题color scheme
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'chriskempson/vim-tomorrow-theme'
"Bundle 'rainux/vim-desert-warm-256'
"Bundle 'wombat256.vim'
"Bundle 'nanotech/jellybeans.vim'
"Bundle 'vim-scripts/tir_black'
"Bundle 'twerth/ir_black'
"Bundle 'tomasr/molokai'

"配置
"Bundle 'carlhuda/janus'
filetype plugin indent on                             "启用缩进

" =============================================================================
"                          << 以下为常用插件配置 >>
" =============================================================================
" -----------------------------------------------------------------------------
"  < Grep 插件配置 >
" ----------------------------------------------------------------------------
":cwindow 
let Grep_OpenQuickfixWindow = 0 
"循环查找
"let Grep_Find_Use_Xargs = 0 
let Grep_Default_Filelist = '*.[chS]'
let Grep_Skip_Files = '*.bak *~' 
" -----------------------------------------------------------------------------
"  < GitGutter 插件配置 >
" ----------------------------------------------------------------------------
"nnoremap ]c <Plug>GitGutterNextHunk
"nnoremap [c <Plug>GitGutterPrevHunk
"暂存 <Leader>hs 和回退 <Leader>hr
"nnoremap <Leader>hr <Plug>GitGutterStageHunk
"nnoremap <Leader>hr <Plug>GitGutterRevertHunk
"显示diff差异<Leader>hp
"

" -----------------------------------------------------------------------------
"  < cscope 插件配置 >
" ----------------------------------------------------------------------------
" s: Find this C symbol
"noremap <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
"noremap <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
"noremap <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
"noremap <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
"noremap <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
"noremap <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
"noremap <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
"noremap <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
"noremap <leader>l :call ToggleLocationList()<CR>
"保留生成文件
let g:cscope_files_kept = 1

" -----------------------------------------------------------------------------
"  < exVim 插件配置 >
" ----------------------------------------------------------------------------
"利用 .exvim 文件作为 Vim 的访问入口，使得 .exvim 文件下的路径形成项目的概念。
"比如我们使用 IDE 如 Visual Studio 时打开项目工程 .sln 文件一样的概念。

" -----------------------------------------------------------------------------
"  < YouCompleteMe 插件配置 >
" -----------------------------------------------------------------------------

"let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_collect_indentifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
" 避免YCM每次加载都对用户提示是否加载
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
" 跳到定义或声明
nnoremap <leader><yg> :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 强制进行编译
nnoremap <leader>yc :YcmForceCompileAndDiagnostics<CR>
" -----------------------------------------------------------------------------
"  < omnicppcomplete 插件配置 >
" -----------------------------------------------------------------------------
" 用于C/C++代码补全，这种补全主要针对命名空间、类、结构、共同体等进行补全，详细
" 说明可以参考帮助或网络教程等
" 使用前先执行如下 ctags 命令（本配置中可以直接使用 ccvext 插件来执行以下命令）
" ctags -R --c++-kinds=+p --fields=+iaS --extra=+q
" --c++-kinds=+p : 为标签添加函数原型(prototype)信息
"--fields=+iaS : 为标签添加继承信息(inheritance)，访问控制(access)信息，函数特征(function Signature,如参数表或原型等)
"--extra=+q : 为类成员标签添加类标识
" 我使用上面的参数生成标签后，对函数使用跳转时会出现多个选择
" 所以我就将--c++-kinds=+p参数给去掉了，如果大侠有什么其它解决方法希望不要保留呀
set completeopt=menu                        "关闭预览窗口
"set completeopt=menu,longest,menuone
let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_SelectFirstItem = 2
let OmniCpp_DisplayMode=1

"系统omni 快捷键默认<C-n>
" -----------------------------------------------------------------------------
"  < neocomplcache 插件配置 >
" -----------------------------------------------------------------------------
" 关键字补全、文件路径补全、tag补全等等，各种，非常好用，速度超快。
let g:neocomplcache_enable_at_startup = 1     "vim 启动时启用插件
let g:neocomplcache_disable_auto_complete = 1 "不自动弹出补全列表
" 在弹出补全列表后用 <c-p> 或 <c-n> 进行上下选择效果比较好
"默认快捷键<C-x><C-u>

" -----------------------------------------------------------------------------
"  < supertab 插件配置 >
" -----------------------------------------------------------------------------
"let g:SuperTabDefaultCompletionType = '<C-N>' "neo

" -----------------------------------------------------------------------------
"  < vim-javacompleteex（也就是 javacomplete 增强版）插件配置 >
" -----------------------------------------------------------------------------
" java 补全插件



" -----------------------------------------------------------------------------
"  < snipMate 插件配置 >
" -----------------------------------------------------------------------------
" 用于各种代码补全，这种补全是一种对代码中的词与代码块的缩写补全，详细用法可以参
" 考使用说明或网络教程等。不过有时候也会与 supertab 插件在补全时产生冲突，如果大
" 侠有什么其它解决方法希望不要保留呀
" let g:snippets_dir = "d:/tools/Vim/vimfiles/snippets/
"
" -----------------------------------------------------------------------------
"  < a.vim 插件配置 >
" -----------------------------------------------------------------------------
" 用于切换C/C++头文件
"   :A 头文件／源文件切换
"   :AS 分割窗后并切换头/源文件(切割为上下两个窗口)
"   :AV 垂直切割窗口后切换头/源文件(切割为左右两个窗口)
"   :AT 新建Vim标签式窗口后切换
"   :AN 在多个匹配文件间循环切换
" 将光标所在处单词作为文件名打开
"   :IH 切换至光标所在文件
"   :IHS 分割窗口后切换至光标所在文件(指将光标所在处单词作为文件名打开)
"   :IHV 垂直分割窗口后切换
"   :IHT 新建标签式窗口后切换
"   :IHN 在多个匹配文件间循环切换
" 快捷键操作
"<Leader>ih 切换至光标所在文件*
"<Leader>is 切换至光标所在处(单词所指)文件的配对文件(如光标所在处为foo.h，则切换至foo.c/foo.cpp...)
"<Leader>ihn 在多个匹配文件间循环切换

let g:alternateRelativeFiles = 1
let g:alternateSearchPath = 'sfr:../,sfr:../../,sfr:../source,sfr:../src,sfr:../include,sfr:../inc'
" -----------------------------------------------------------------------------
"  < Align 插件配置 >
" -----------------------------------------------------------------------------
" 一个对齐的插件，用来——排版与对齐代码，功能强大，不过用到的机会不多
" -----------------------------------------------------------------------------
"  < tabular 插件配置 >
" -----------------------------------------------------------------------------
" \bb                 按=号对齐代码 [Tabular插件]
"nnoremap <leader>bb :Tab /=<CR>
" \bn                 自定义对齐    [Tabular插件]
"nnoremap <leader>bn :Tab /
" -----------------------------------------------------------------------------
"  < auto-pairs 插件配置 >
" -----------------------------------------------------------------------------
" 用于括号与引号自动补全，不过会与函数原型提示插件echofunc冲突
" 所以我就没有加入echofunc插件

" -----------------------------------------------------------------------------
"  < BufExplorer 插件配置 >
" -----------------------------------------------------------------------------
" 快速轻松的在缓存中切换（相当于另一种多个文件间的切换方式）
" <Leader>be 在当前窗口显示缓存列表并打开选定文件
" <Leader>bs 水平分割窗口显示缓存列表，并在缓存列表窗口中打开选定文件
" <Leader>bv 垂直分割窗口显示缓存列表，并在缓存列表窗口中打开选定文件

" -----------------------------------------------------------------------------
"  < ccvext.vim 插件配置 >
" -----------------------------------------------------------------------------
" 用于对指定文件自动生成tags与cscope文件并连接
" 如果是Windows系统, 则生成的文件在源文件所在盘符根目录的.symbs目录下(如: X:\.symbs\)
" 如果是Linux系统, 则生成的文件在~/.symbs/目录下
" 具体用法可参考www.vim.org中此插件的说明
" <Leader>sy 自动生成tags与cscope文件并连接
" <Leader>sc 连接已存在的tags与cscope文件

" -----------------------------------------------------------------------------
"  < cSyntaxAfter 插件配置 >
" -----------------------------------------------------------------------------
" 高亮括号与运算符等
autocmd! BufRead,BufNewFile,BufEnter *.{c,cpp,h,java,javascript} call CSyntaxAfter()

" -----------------------------------------------------------------------------
"  < ctrlp.vim 插件配置 >
" -----------------------------------------------------------------------------
" 一个全路径模糊文件，缓冲区，最近最多使用，... 检索插件；详细帮助见 :h ctrlp
" 常规模式下输入：Ctrl + p 调用插件
"let g:ctrlp_map = '<leader>p'
"let g:ctrlp_cmd = 'CtrlPMixed'
"noremap <leader>f :CtrlPMRU<CR>
" Press `<F5>` to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
" Press `<c-f>` and `<c-b>` to cycle between modes.
" Press `<c-d>` to switch to filename only search instead of full path.
" Press `<c-r>` to switch to regexp mode.
" Use `<c-j>`, `<c-k>` or the arrow keys to navigate the result list.
" Use `<c-t>` or `<c-v>`, `<c-x>` to open the selected entry in a new tab or in a new split.
" Use `<c-n>`, `<c-p>` to select the next/previous string in the prompt's history.
" Use `<c-y>` to create a new file and its parent directories.
" Use `<c-z>` to mark/unmark multiple files and `<c-o>` to open them.
if g:iswindows
   " let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
endif
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(txt|exe|so|dll|zip|tar|tar.gz)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

" 在每次进行切换分支或者重新设定custome_ignore选项的时候,必须手动清除CtrlP的缓存,
" 也可以使用下句不让它进行缓存处理，但扫描时间会比较耗时
"let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"定义切换目录
let g:ctrlp_working_path_mode = 'ra'
" -----------------------------------------------------------------------------
"  < emmet-vim（前身为Zen coding） 插件配置 >
" -----------------------------------------------------------------------------
" HTML/CSS代码快速编写神器，详细帮助见 :h emmet.txt

" -----------------------------------------------------------------------------
"  < indentLine 插件配置 >
" -----------------------------------------------------------------------------
" 用于显示对齐线，与 indent_guides 在显示方式上不同，根据自己喜好选择了
" 在终端上会有屏幕刷新的问题，这个问题能解决有更好了
" 开启/关闭对齐线
nnoremap <leader>il :IndentLinesToggle<CR>

" 设置Gvim的对齐线样式
if g:isGUI
    let g:indentLine_char = "┊"
    let g:indentLine_first_char = "┊"
endif

" 设置终端对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
let g:indentLine_color_term = 239

" 设置 GUI 对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
" let g:indentLine_color_gui = '#A4E57E'

" -----------------------------------------------------------------------------
"  < Mark--Karkat（也就是 Mark） 插件配置 >
" -----------------------------------------------------------------------------
" 给不同的单词高亮，表明不同的变量时很有用，详细帮助见 :h mark.txt

" " -----------------------------------------------------------------------------
" "  < MiniBufExplorer 插件配置 >
" " -----------------------------------------------------------------------------
" " 快速浏览和操作Buffer
" " 主要用于同时打开多个文件并相与切换

" let g:miniBufExplMapWindowNavArrows = 1     "用Ctrl加方向键切换到上下左右的窗口中去
" let g:miniBufExplMapWindowNavVim = 1        "用<C-k,j,h,l>切换到上下左右的窗口中去
" let g:miniBufExplMapCTabSwitchBufs = 1      "功能增强（不过好像只有在Windows中才有用）
" "                                            <C-Tab> 向前循环切换到每个buffer上,并在但前窗口打开
" "                                            <C-S-Tab> 向后循环切换到每个buffer上,并在当前窗口打开
"let g:miniBufExplModSelTarget = 1
""解决FileExplorer窗口变小问题
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplorerMoreThanOne=2
"let g:miniBufExplCycleArround=1
"" 默认方向键左右可以切换buffer
"nnoremap <TAB> :MBEbn<CR>
"nnoremap <s-TAB> :MBEbp<CR>
"noremap <leader>bn :MBEbn<CR>
"noremap <leader>bp :MBEbp<CR>
"noremap <leader>bd :MBEbd<CR>

" -----------------------------------------------------------------------------
"  < nerdcommenter 插件配置 >
" -----------------------------------------------------------------------------
" 我主要用于C/C++代码注释(其它的也行)
" 以下为插件默认快捷键，其中的说明是以C/C++为例的，其它语言类似
" <Leader>ci 以每行一个 /* */ 注释选中行(选中区域所在行)，再输入则取消注释
" <Leader>cm 以一个 /* */ 注释选中行(选中区域所在行)，再输入则称重复注释
" <Leader>cc 以每行一个 /* */ 注释选中行或区域，再输入则称重复注释
" <Leader>cu 取消选中区域(行)的注释，选中区域(行)内至少有一个 /* */
" <Leader>ca 在/*...*/与//这两种注释方式中切换（其它语言可能不一样了）
" <Leader>cA 行尾注释
let NERDSpaceDelims = 1                     "在左注释符之后，右注释符之前留有空格

" -----------------------------------------------------------------------------
"  < nerdtree 插件配置 >
" -----------------------------------------------------------------------------
" 有目录村结构的文件浏览插件
let NERDTreeWinPos='right'
let NERDTreeHighlightCursorline=1
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

"nnoremap <silent><leader>nt :exec("NERDTree ".expand('%:p:h'))<CR>

" -----------------------------------------------------------------------------
"  < FuzzyFinder 插件配置 >
" -----------------------------------------------------------------------------
nnoremap <leader>fuf :FufFile<CR>
nnoremap <leader>fub :FufBuffer<CR>
nnoremap <leader>fud :FufDir<CR>
nnoremap <leader>fut :FufTag<CR>
nnoremap <leader>fuc :FufChangeList<CR>
nnoremap <leader>fuj :FufJumpList<CR>
nnoremap <leader>fuq :FufQuickfix<CR>
" -----------------------------------------------------------------------------
"  < ctrlsf 插件配置 >
" -----------------------------------------------------------------------------
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_auto_close = 0
noremap <D-F> :CtrlSF<space>
" -----------------------------------------------------------------------------
"  < airline 插件配置 >


"启用标签栏[必备]Smarter tab line
let g:airline#extensions#tabline#enabled = 1
"启用powerline字体[必备]
let g:airline_powerline_fonts = 1

"状态栏修改
"显示时间/默认显示Git分支
"let g:airline_section_b = '%{strftime("%c")}'
"显示缓冲号/默认显示编码格式
"let g:airline_section_y = 'BN: %{bufnr("%")}'
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
"标签栏修改
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = ''

" -----------------------------------------------------------------------------
"  < repeat 插件配置 >
" -----------------------------------------------------------------------------
" 主要用"."命令来重复上次插件使用的命令

"
" -----------------------------------------------------------------------------
"  < SrcExpl 插件配置 >
" -----------------------------------------------------------------------------
" 增强源代码浏览，其功能就像Windows中的"Source Insight"
let g:SrcExpl_gobackKey = '<BS>'
let g:SrcExpl_jumpKey = '<C-CR>'
let g:SrcExpl_updateTagsCmd = 'ctags -R --sort=foldcase --file-scope=yes --langmap=c:+.h --languages=Asm,Make,C,C++,C\#,Java,Python,sh,Vim,REXX,SQL --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q '
" -----------------------------------------------------------------------------
"  < std_c 插件配置 >
" -----------------------------------------------------------------------------
" 用于增强C语法高亮

" 启用 // 注视风格
let c_cpp_comments = 0

" -----------------------------------------------------------------------------
"  < surround 插件配置 >
" -----------------------------------------------------------------------------
" 快速给单词/句子两边增加符号（包括html标签），缺点是不能用"."来重复命令
" 不过 repeat 插件可以解决这个问题，详细帮助见 :h surround.txt

" -----------------------------------------------------------------------------
"  < Syntastic 插件配置 >
" -----------------------------------------------------------------------------
" 用于保存文件时查检语法
" 在打开文件的时候检查
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"set error or warning signs
let g:syntastic_error_symbol = '?'
let g:syntastic_warning_symbol = '?'
"whether to show balloons
let g:syntastic_enable_balloons = 1
let g:syntastic_always_populate_loc_list = 1

" -----------------------------------------------------------------------------
"  < Tagbar 插件配置 >
" -----------------------------------------------------------------------------
" 相对 TagList 能更好的支持面向对象

" 常规模式下输入 tb 调用插件，如果有打开 TagList 窗口则先将其关闭
"nnoremap tb :TlistClose<CR>:TagbarToggle<CR>
let g:tagbar_width=30                       "设置窗口宽度
let g:tagbar_left=1                         "在左侧窗口中显示
let g:tagbar_autofocus = 1
let g:tagbar_sort = 1                       "按源文件顺序排列
" 加载代码时自动打开tagbar
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
" -----------------------------------------------------------------------------
"  < TagList 插件配置 >
" -----------------------------------------------------------------------------
" 高效地浏览源码, 其功能就像vc中的workpace
" 那里面列出了当前文件中的所有宏,全局变量, 函数名等

" 常规模式下输入 tl 调用插件，如果有打开 Tagbar 窗口则先将其关闭
"nnoremap tl :TagbarClose<CR>:Tlist<CR>
nnoremap tl :TlistToggle<CR>

let Tlist_Show_One_File=1                   "只显示当前文件的tags
" let Tlist_Enable_Fold_Column=0              "使taglist插件不显示左边的折叠行
let Tlist_Exit_OnlyWindow=1                 "如果Taglist窗口是最后一个窗口则退出Vim
"let Tlist_File_Fold_Auto_Close=1            "自动折叠
let Tlist_WinWidth=30                       "设置窗口宽度
let Tlist_Use_Right_Window=1                "在右侧窗口中显示
"let g:Tlist_Use_Left_Window=1              "在左侧窗口中显示
let g:Tlist_Process_File_Always=1
let g:Tlist_Sort_Type='name'                " 按照名称排序
let g:Tlist_Inc_Winwidth=0
let g:Tlist_Compart_Format = 1 " 压缩方式

" -----------------------------------------------------------------------------
"  < txtbrowser 插件配置 >
" -----------------------------------------------------------------------------
" 用于文本文件生成标签与与语法高亮（调用TagList插件生成标签，如果可以）
autocmd BufRead,BufNewFile *.txt setlocal ft=txt

" -----------------------------------------------------------------------------
"  < TaskList 插件配置 >
" -----------------------------------------------------------------------------
"
noremap <leader>td <Plug>TaskList
" -----------------------------------------------------------------------------
"  < TaskList 插件配置 >
" -----------------------------------------------------------------------------
"let g:multi_cursor_use_default_mapping=0
" Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'
" Map start key separately from next key
"let g:multi_cursor_start_key='<F6>'
" -----------------------------------------------------------------------------
"  < ZoomWin 插件配置 >
" -----------------------------------------------------------------------------
" 用于分割窗口的最大化与还原
" 常规模式下按快捷键 <c-w>o 在最大化与还原间切换

" -----------------------------------------------------------------------------
"  < vimIM 输入法配置 >
" -----------------------------------------------------------------------------
"正常模式： 　gi  　      无菜单窗中文输入   Insert text ... 　　
"正常模式： 　n      　   无菜单窗中文搜索   Repeat the latest "/" or "?" ...
"插入模式： i_CTRL-_   开关中文输入法      Switch between languages ...
"插入模式： i_CTRL-^    切换中文输入法      Toggle the use of language ...　
    :let g:vimim_cloud = 'google,sogou,baidu,qq'
    :let g:vimim_map = 'tab_as_gi'
  " :let g:vimim_mode = 'dynamic'
  " :let g:vimim_mycloud = 0
  " :let g:vimim_plugin = 'C:/var/mobile/vim/vimfiles/plugin'
  " :let g:vimim_punctuation = 2
  " :let g:vimim_shuangpin = 0
  " :let g:vimim_toggle = 'pinyin,google,sogou'
" inoremap<silent><C-L> <Plug>VimimChineseToggle
" =============================================================================
"                          << 以下为软件默认配置 >>
" =============================================================================

" -----------------------------------------------------------------------------
"  < 编译、连接、运行配置 (目前只配置了C、C++、Java语言)>
" -----------------------------------------------------------------------------
" F9 一键保存、编译、连接存并运行
nnoremap <F9> :call Run()<CR>
inoremap <F9> <ESC>:call Run()<CR>

" Ctrl + F9 一键保存并编译
nnoremap <c-F9> :call Compile()<CR>
inoremap <c-F9> <ESC>:call Compile()<CR>

" Ctrl + F10 一键保存并连接
nnoremap <c-F10> :call Link()<CR>
inoremap <c-F10> <ESC>:call Link()<CR>

let s:LastShellReturn_C = 0
let s:LastShellReturn_L = 0
let s:ShowWarning = 1
let s:Obj_Extension = '.o'
let s:Exe_Extension = '.exe'
let s:Class_Extension = '.class'
let s:Sou_Error = 0

let s:windows_CFlags = 'gcc\ -fexec-charset=gbk\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
let s:linux_CFlags = 'gcc\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'

let s:windows_CPPFlags = 'g++\ -fexec-charset=gbk\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'
let s:linux_CPPFlags = 'g++\ -Wall\ -g\ -O0\ -c\ %\ -o\ %<.o'

let s:JavaFlags = 'javac\ %'

func! Compile()
    exe ":ccl"
    exe ":update"
    let s:Sou_Error = 0
    let s:LastShellReturn_C = 0
    let Sou = expand("%:p")
    let v:statusmsg = ''
    if expand("%:e") == "c" || expand("%:e") == "cpp" || expand("%:e") == "cxx"
        let Obj = expand("%:p:r").s:Obj_Extension
        let Obj_Name = expand("%:p:t:r").s:Obj_Extension
        if !filereadable(Obj) || (filereadable(Obj) && (getftime(Obj) < getftime(Sou)))
            redraw!
            if expand("%:e") == "c"
                if g:iswindows
                    exe ":setlocal makeprg=".s:windows_CFlags
                else
                    exe ":setlocal makeprg=".s:linux_CFlags
                endif
                echohl WarningMsg | echo " compiling..."
                silent make
            elseif expand("%:e") == "cpp" || expand("%:e") == "cxx"
                if g:iswindows
                    exe ":setlocal makeprg=".s:windows_CPPFlags
                else
                    exe ":setlocal makeprg=".s:linux_CPPFlags
                endif
                echohl WarningMsg | echo " compiling..."
                silent make
            endif
            redraw!
            if v:shell_error != 0
                let s:LastShellReturn_C = v:shell_error
            endif
            if g:iswindows
                if s:LastShellReturn_C != 0
                    exe ":bo cope"
                    echohl WarningMsg | echo " compilation failed"
                else
                    if s:ShowWarning
                        exe ":bo cw"
                    endif
                    echohl WarningMsg | echo " compilation successful"
                endif
            else
                if empty(v:statusmsg)
                    echohl WarningMsg | echo " compilation successful"
                else
                    exe ":bo cope"
                endif
            endif
        else
            echohl WarningMsg | echo ""Obj_Name"is up to date"
        endif
    elseif expand("%:e") == "java"
        let class = expand("%:p:r").s:Class_Extension
        let class_Name = expand("%:p:t:r").s:Class_Extension
        if !filereadable(class) || (filereadable(class) && (getftime(class) < getftime(Sou)))
            redraw!
            exe ":setlocal makeprg=".s:JavaFlags
            echohl WarningMsg | echo " compiling..."
            silent make
            redraw!
            if v:shell_error != 0
                let s:LastShellReturn_C = v:shell_error
            endif
            if g:iswindows
                if s:LastShellReturn_C != 0
                    exe ":bo cope"
                    echohl WarningMsg | echo " compilation failed"
                else
                    if s:ShowWarning
                        exe ":bo cw"
                    endif
                    echohl WarningMsg | echo " compilation successful"
                endif
            else
                if empty(v:statusmsg)
                    echohl WarningMsg | echo " compilation successful"
                else
                    exe ":bo cope"
                endif
            endif
        else
            echohl WarningMsg | echo ""class_Name"is up to date"
        endif
    else
        let s:Sou_Error = 1
        echohl WarningMsg | echo " please choose the correct source file"
    endif
    exe ":setlocal makeprg=make"
endfunc

func! Link()
    call Compile()
    if s:Sou_Error || s:LastShellReturn_C != 0
        return
    endif
    if expand("%:e") == "c" || expand("%:e") == "cpp" || expand("%:e") == "cxx"
        let s:LastShellReturn_L = 0
        let Sou = expand("%:p")
        let Obj = expand("%:p:r").s:Obj_Extension
        if g:iswindows
            let Exe = expand("%:p:r").s:Exe_Extension
            let Exe_Name = expand("%:p:t:r").s:Exe_Extension
        else
            let Exe = expand("%:p:r")
            let Exe_Name = expand("%:p:t:r")
        endif
        let v:statusmsg = ''
        if filereadable(Obj) && (getftime(Obj) >= getftime(Sou))
            redraw!
            if !executable(Exe) || (executable(Exe) && getftime(Exe) < getftime(Obj))
                if expand("%:e") == "c"
                    setlocal makeprg=gcc\ -o\ %<\ %<.o
                    echohl WarningMsg | echo " linking..."
                    silent make
                elseif expand("%:e") == "cpp" || expand("%:e") == "cxx"
                    setlocal makeprg=g++\ -o\ %<\ %<.o
                    echohl WarningMsg | echo " linking..."
                    silent make
                endif
                redraw!
                if v:shell_error != 0
                    let s:LastShellReturn_L = v:shell_error
                endif
                if g:iswindows
                    if s:LastShellReturn_L != 0
                        exe ":bo cope"
                        echohl WarningMsg | echo " linking failed"
                    else
                        if s:ShowWarning
                            exe ":bo cw"
                        endif
                        echohl WarningMsg | echo " linking successful"
                    endif
                else
                    if empty(v:statusmsg)
                        echohl WarningMsg | echo " linking successful"
                    else
                        exe ":bo cope"
                    endif
                endif
            else
                echohl WarningMsg | echo ""Exe_Name"is up to date"
            endif
        endif
        setlocal makeprg=make
    elseif expand("%:e") == "java"
        return
    endif
endfunc

func! Run()
    let s:ShowWarning = 0
    call Link()
    let s:ShowWarning = 1
    if s:Sou_Error || s:LastShellReturn_C != 0 || s:LastShellReturn_L != 0
        return
    endif
    let Sou = expand("%:p")
    if expand("%:e") == "c" || expand("%:e") == "cpp" || expand("%:e") == "cxx"
        let Obj = expand("%:p:r").s:Obj_Extension
        if g:iswindows
            let Exe = expand("%:p:r").s:Exe_Extension
        else
            let Exe = expand("%:p:r")
        endif
        if executable(Exe) && getftime(Exe) >= getftime(Obj) && getftime(Obj) >= getftime(Sou)
            redraw!
            echohl WarningMsg | echo " running..."
            if g:iswindows
                exe ":!%<.exe"
            else
                if g:isGUI
                    exe ":!gnome-terminal -x bash -c './%<; echo; echo 请按 Enter 键继续; read'"
                else
                    exe ":!clear; ./%<"
                endif
            endif
            redraw!
            echohl WarningMsg | echo " running finish"
        endif
    elseif expand("%:e") == "java"
        let class = expand("%:p:r").s:Class_Extension
        if getftime(class) >= getftime(Sou)
            redraw!
            echohl WarningMsg | echo " running..."
            if g:iswindows
                exe ":!java %<"
            else
                if g:isGUI
                    exe ":!gnome-terminal -x bash -c 'java %<; echo; echo 请按 Enter 键继续; read'"
                else
                    exe ":!clear; java %<"
                endif
            endif
            redraw!
            echohl WarningMsg | echo " running finish"
        endif
    endif
endfunc


" -----------------------------------------------------------------------------
"  < 在浏览器中预览 Html 或 PHP 文件 >
" -----------------------------------------------------------------------------
" 修改前请先通读此模块，明白了再改以避免错误

" F5 加浏览器名称缩写调用浏览器预览，启用前先确定有安装相应浏览器，并在下面的配置好其安装目录
if g:iswindows
    "以下为只支持Windows系统的浏览器

    " 调用系统IE浏览器预览，如果已卸载可将其注释
    nnoremap <F5>ie :call ViewInBrowser("ie")<cr>
    inoremap <F5>ie <ESC>:call ViewInBrowser("ie")<cr>

    " 调用IETester(IE测试工具)预览，如果有安装可取消注释
    " nnoremap <F5>ie6 :call ViewInBrowser("ie6")<cr>
    " inoremap <F5>ie6 <ESC>:call ViewInBrowser("ie6")<cr>
    " nnoremap <F5>ie7 :call ViewInBrowser("ie7")<cr>
    " inoremap <F5>ie7 <ESC>:call ViewInBrowser("ie7")<cr>
    " nnoremap <F5>ie8 :call ViewInBrowser("ie8")<cr>
    " inoremap <F5>ie8 <ESC>:call ViewInBrowser("ie8")<cr>
    " nnoremap <F5>ie9 :call ViewInBrowser("ie9")<cr>
    " inoremap <F5>ie9 <ESC>:call ViewInBrowser("ie9")<cr>
    " nnoremap <F5>ie10 :call ViewInBrowser("ie10")<cr>
    " inoremap <F5>ie10 <ESC>:call ViewInBrowser("ie10")<cr>
    " nnoremap <F5>iea :call ViewInBrowser("iea")<cr>
    " inoremap <F5>iea <ESC>:call ViewInBrowser("iea")<cr>
elseif g:islinux
    "以下为只支持Linux系统的浏览器
    "暂未配置，待有时间再弄了
endif

"以下为支持Windows与Linux系统的浏览器

" 调用Firefox浏览器预览，如果有安装可取消注释
" nnoremap <F5>ff :call ViewInBrowser("ff")<cr>
" inoremap <F5>ff <ESC>:call ViewInBrowser("ff")<cr>

" 调用Maxthon(遨游)浏览器预览，如果有安装可取消注释
" nnoremap <F5>ay :call ViewInBrowser("ay")<cr>
" inoremap <F5>ay <ESC>:call ViewInBrowser("ay")<cr>

" 调用Opera浏览器预览，如果有安装可取消注释
" nnoremap <F5>op :call ViewInBrowser("op")<cr>
" inoremap <F5>op <ESC>:call ViewInBrowser("op")<cr>

" 调用Chrome浏览器预览，如果有安装可取消注释
" nnoremap <F5>cr :call ViewInBrowser("cr")<cr>
" inoremap <F5>cr <ESC>:call ViewInBrowser("cr")<cr>

" 浏览器调用函数
function! ViewInBrowser(name)
    if expand("%:e") == "php" || expand("%:e") == "html"
        exe ":update"
        if g:iswindows
            "获取要预览的文件路径，并将路径中的'\'替换为'/'，同时将路径文字的编码转换为gbk（同cp936）
            let file = iconv(substitute(expand("%:p"), '\', '/', "g"), "utf-8", "gbk")

            "浏览器路径设置，路径中使用'/'斜杠，更改路径请更改双引号里的内容
            "下面只启用了系统IE浏览器，如需启用其它的可将其取消注释（得先安装，并配置好安装路径），也可按需增减
            let SystemIE = "C:/progra~1/intern~1/iexplore.exe"  "系统自带IE目录
            " let IETester = "F:/IETester/IETester.exe"           "IETester程序目录（可按实际更改）
            " let Chrome = "F:/Chrome/Chrome.exe"                 "Chrome程序目录（可按实际更改）
            " let Firefox = "F:/Firefox/Firefox.exe"              "Firefox程序目录（可按实际更改）
            " let Opera = "F:/Opera/opera.exe"                    "Opera程序目录（可按实际更改）
            " let Maxthon = "C:/Progra~2/Maxthon/Bin/Maxthon.exe" "Maxthon程序目录（可按实际更改）

            "本地虚拟服务器设置，我测试的是phpStudy2014，可根据自己的修改，更改路径请更改双引号里的内容
            let htdocs ="F:/phpStudy2014/WWW/"                  "虚拟服务器地址或目录（可按实际更改）
            let url = "localhost"                               "虚拟服务器网址（可按实际更改）
        elseif g:islinux
            "暂时还没有配置，有时间再弄了。
        endif

        "浏览器调用缩写，可根据实际增减，注意，上面浏览器路径中没有定义过的变量（等号右边为变量）不能出现在下面哟（可将其注释或删除）
        let l:browsers = {}                             "定义缩写字典变量，此行不能删除或注释
        " let l:browsers["cr"] = Chrome                   "Chrome浏览器缩写
        " let l:browsers["ff"] = Firefox                  "Firefox浏览器缩写
        " let l:browsers["op"] = Opera                    "Opera浏览器缩写
        " let l:browsers["ay"] = Maxthon                  "遨游浏览器缩写
        let l:browsers["ie"] = SystemIE                 "系统IE浏览器缩写
        " let l:browsers["ie6"] = IETester."-ie6"         "调用IETESTER工具以IE6预览缩写（变量加参数）
        " let l:browsers["ie7"] = IETester."-ie7"         "调用IETESTER工具以IE7预览缩写（变量加参数）
        " let l:browsers["ie8"] = IETester."-ie8"         "调用IETESTER工具以IE8预览缩写（变量加参数）
        " let l:browsers["ie9"] = IETester."-ie9"         "调用IETESTER工具以IE9预览缩写（变量加参数）
        " let l:browsers["ie10"] = IETester."-ie10"       "调用IETESTER工具以IE10预览缩写（变量加参数）
        " let l:browsers["iea"] = IETester."-al"          "调用IETESTER工具以支持的所有IE版本预览缩写（变量加参数）

        if stridx(file, htdocs) == -1   "文件不在本地虚拟服务器目录，则直接预览（但不能解析PHP文件）
           exec ":silent !start ". l:browsers[a:name] ." file://" . file
        else    "文件在本地虚拟服务器目录，则调用本地虚拟服务器解析预览（先启动本地虚拟服务器）
            let file = substitute(file, htdocs, "http://".url."/", "g")    "转换文件路径为虚拟服务器网址路径
            exec ":silent !start ". l:browsers[a:name] file
        endif
    else
        echohl WarningMsg | echo " please choose the correct source file"
    endif
endfunction
" =============================================================================
"                          << 自动命令 >>
" =============================================================================
" 自动切换目录为当前编辑文件所在目录
"autocmd! BufRead,BufNewFile,BufEnter * lcd %:p:h
"autocmd! BufRead,BufNewFile,BufEnter * call ToGitDir()
"  :p			/home/mool/vim/src/version.c
"  :p:.				       src/version.c
"  :p:~				 ~/vim/src/version.c
"  :h				       src
"  :p:h			/home/mool/vim/src
"  :p:h:h		/home/mool/vim
"  :t					   version.c
"  :p:t					   version.c
"  :r				       src/version
"  :p:r			/home/mool/vim/src/version
"  :t:r					   version
"  :e						   c
"  :s?version?main?		       src/main.c
"  :s?version?main?:p	/home/mool/vim/src/main.c
"  :p:gs?/?\\?		\home\mool\vim\src\version.c
"    lcd是紧紧改变当前窗口的工作路径
"    %  代表当前文件的文件名
"    :p 扩展成全名(就是带了路径)
"    :h 析取出路径
"    :autocmd BufEnter * lcd %:p:h   : 自动更改到当前文件所在的目录

" 启用每行超过80列的字符提示（字体变蓝并加下划线），不启用就注释掉
"autocmd! BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)

" 自动删除行尾 Dos回车符和空格
"autocmd BufRead * silent! %s/[\r \t]\+$//
"autocmd BufEnter *.php :%s/[ \t\r]\+$//e

" 恢复上次文件打开位置
"set viminfo='10,\"100,:20,%,n~/.viminfo
autocmd! BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" 自动跳转当上次结束编辑的位置
"autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"离开插入模式后 自动关闭预览窗口
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd cursormovedi,insertLeave * if pumvisible() == 0|silent! pclose|endif


"关於omni的设定要写在 filetype plugin ... on, 的后面.
"filetype plugin indent on
"autocmd FileType c set omnifunc=ccomplete#Complete
"autocmd FileType cpp set omnifunc=omni#cpp#complete#main
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complete
"if has("autocmd") && exists("+omnifunc")
     "autocmd Filetype *
   "\ if &omnifunc == "" |
   "\   setlocal omnifunc=syntaxcomplete#Complete |
   "\ endif
"endif
"set cot-=preview "disable doc preview in omnicomplete

" 快捷打开编辑vimrc文件的键盘绑定
if (g:iswindows)
    if exists('$HOME/vimfiles/*vimrc')
	    noremap <leader>e :e $HOME/vimfiles/*vimrc<CR>
    else
        noremap <leader>e :e $VIM/*vimrc<CR>
    endif

    autocmd! bufwritepost *vimrc source %
else
	noremap <leader>e :e $HOME/.vimrc<cr>
	autocmd! bufwritepost .vimrc source %
endif

