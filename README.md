# [gmarik](http://github.com/gmarik)'s [Vim configuration](http://github.com/gmarik/vimfiles)

##Linux
    1. git clone --recursive git@github.com:sdlylshl/vimfiles .vim
    2. ln -s .vim/gitconfig .gitconfig
    3. ln -s .vim/vimrc .vimrc
    4. ./powerline-fonts/install.sh

        
    {测试未通过 禁用
    sudo chmod 766 /usr/share/fonts
    cp -r vimfile/bundle/powerline-fonts /usr/share/fonts/
    cd /usr/share/fonts/powerline-fonts
    建立字体缓存
    a. makefontscale
    b. mkdir -p $font_dir  (创建字体目录font_dir="$HOME/.fonts")
    c. eval $find_command | xargs -0 -I % cp "%" "$font_dir/"
    d. fc-cache -f $font_dir (刷新字体缓存)
    }
##Windows
