if system ('uname -a | grep microsoft') !=  ''
  augroup myYank
    autocmd!
    autocmd TextYankPost  * :call system('clip.exe', @")
  augroup END
endif
