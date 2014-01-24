Setup
=====
```
cd ~
git clone https://github.com/skhaz/vimfiles .vim
ln -s .vim/vimrc .vimrc
cd .vim
git submodule update --init --recursive
```

Customize and install all vundles
=================================

For costumize the plugin list, edit the file "bundles.vim", then run the command

```
vim +BundleInstall +qall
```

Wait for installation... Done :)

ScreenShot
==========

![ScreenShot](https://raw.github.com/skhaz/vimfiles/master/screenshot.png)


