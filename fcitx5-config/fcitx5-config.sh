mkdir -p ~/.local/share/fcitx5/themes/fcitx5-dark-transparent
git clone https://github.com/hosxy/fcitx5-dark-transparent.git ~/.local/share/fcitx5/themes/fcitx5-dark-transparent

fcitx5-pinyin-zhwiki 肥猫词库

vim ~/.xprofile
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx