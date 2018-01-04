# deinでvimshellとdeopleteを使えるようにするために

```
 2919  cd .vim/dein/repos/github.com/Shougo/vimproc
 2920  ll
 2921  make
 2922  ll
 2923  ll lib
 2924  cd
 2925  vim .vimrc
 2926* cd .vim/dein/
 2927* ls -la
 2928* ls -la .cache
 2929* ls -la .cache/.vimrc/.dein/lib
 2930* cp repos/github.com/Shougo/vimproc/lib/vimproc_mac.so .cache/.vimrc/.dein/lib
 2931  vim .vimrc
 2932  cd cnn_livedoor_news
 2933  vim .
 2934  which vim
 2936  brew upgrade vim --with-python3
```

### 参考
* https://rcmdnk.com/blog/2017/11/16/computer-vim/
* https://qiita.com/ryo2851/items/4e3c287d5a0005780034


