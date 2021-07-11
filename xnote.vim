command! XNoteSave call XNoteSave()
command! -nargs=1 XNoteGrep call XNoteGrep(<f-args>)

function! XNoteSave()
  if expand('%')==''
    call mkdir("~/XNote", "p")
    let fname = "~/XNote/" . strftime('%Y%m%d%H%M%S') . ".md"
    execut 'write' fname
  else
    w
  endif
endfunction

function! XNoteGrep(query)
  execute 'vimgrep' a:query '~/XNote/*.md'
endfunction

nmap xxx :XNoteSave<CR>
nmap xxg :XNoteGrep
