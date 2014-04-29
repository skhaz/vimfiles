Setup
=====
```
cd ~
git clone https://github.com/skhaz/vimfiles .vim
ln -s .vim/vimrc .vimrc
cd .vim
git submodule update --init --recursive
```

Customize and install
=====================

Edit the file "bundles.vim" and run the command

```
vim +BundleInstall +qall
```

... Happy Hacking!

ScreenShot
==========

![ScreenShot](https://raw.github.com/skhaz/vimfiles/master/screenshot.png)


