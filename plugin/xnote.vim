command! XNoteSave call xnote#XNoteSave()
command! -nargs=1 XNoteGrep call xnote#XNoteGrep(<f-args>)

nmap xxx :XNoteSave<CR>
nmap xxg :XNoteGrep
