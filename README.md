
Setup
=====
```
cd ~
git clone https://github.com/skhaz/vimfiles .vim
ln -s .vim/vimrc .vimrc
cd .vim
git submodule update --init --recursive
```

Open vim and type

```
<ESC>:BundleInstall
```

Wait for installation...

For costumize the plugin list, edit the file bundles.vim

![ScreenShot](https://raw.github.com/skhaz/vimfiles/master/screenshot.png)


