#!/bin/bash
sudo mkdir -p /usr/share/fonts/winFonts

sudo cp *.ttf /usr/share/fonts/winFonts/

sudo chmod 644 /usr/share/fonts/winFonts/*.ttf

cd /usr/share/fonts/winFonts/

sudo mkfontscale      #（创建雅黑字体的fonts.scale文件，它用来控制字体旋转缩放）
sudo mkfontdir        #（创建雅黑字体的fonts.dir文件，它用来控制字体粗斜体产生）
sudo fc-cache -fv     #（建立字体缓存信息，也就是让系统认识雅黑）


#然后用Tweak Advanced Setting来设置字体。Tweak可以在Ubuntu Software Center找到安装。
sudo apt-get install unity-tweak-tool

