function! PicoProject()
  if(match(@%, '\v(lua|p8)') > -1 && len(glob("*.p8")))
    set filetype=pico8
    silent! colorscheme pico
  endif
endfunction

au BufEnter,BufNewFile,BufReadPre * call PicoProject()
