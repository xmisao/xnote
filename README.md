# xnote

## Installation

*Vim Plug*

Add the following text to your `.vimrc`.

```vim
call plug#begin()
  Plug 'xmisao/xnote'
call plug#end()
```

## Usage

### Quick save

Quick save the current buffer to a file named `~/XNote/%Y%m%d%H%M%S.md`.

Execute command `:XNoteSave`, or type `xxx` in normal mode.

### Quick search

Quick search for saved notes.

Execute command `:XNoteGrep something`, or type `xxg` in normal mode.
