# [gmarik](http://github.com/gmarik)'s [Vim configuration](http://github.com/gmarik/vimfiles)

##Linux
    1. git clone --recursive git@github.com:sdlylshl/vimfiles
    2. ln -s vimfiles/ .vim
    3. ln -s vimfiles/vimrc .vimrc
    4. ./powerline-fonts/install.sh
    
    {
    sudo chmod 766 /usr/share/fonts
    cp vimfile/bundle/powerline-fonts /usr/share/fonts/
    cd /usr/share/fonts/powerline-fonts
    建立字体缓存
    a.makefontscale
    b.makefontdir
    c.fc -catch(刷新字体缓存)
    }
