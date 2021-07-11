function! xnote#XNoteSave()
  if expand('%')==''
    call mkdir("~/XNote", "p")
    let fname = "~/XNote/" . strftime('%Y%m%d%H%M%S') . ".md"
    execut 'write' fname
  else
    w
  endif
endfunction

function! xnote#XNoteGrep(query)
  execute 'vimgrep' a:query '~/XNote/*.md'
endfunction
