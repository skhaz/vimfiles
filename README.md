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

For costumize the plugin list, edit the file "bundles.vim", then run the command

```
vim +BundleInstall +qall
```

And wait for installation... Happy Hacking!

ScreenShot
==========

![ScreenShot](https://raw.github.com/skhaz/vimfiles/master/screenshot.png)


