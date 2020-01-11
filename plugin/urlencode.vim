if exists('g:loaded_urlencode')
  finish
endif
let g:loaded_urlencode = 1

command UrlEncode :call urlencode#encode()

command UrlDecode :call urlencode#decode()
