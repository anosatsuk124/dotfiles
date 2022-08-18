# Plugins usage for me

# Coc.nvim

- gd

  > Go to the definition.
  > 戻るときには<kbd>C-o</kbd>で戻れる。

- 補完のスクロール

  > <kbd>C-f</kbd> <kbd>C-b</kbd>でスクロールする。

- Shift-K
  > <kbd><kbd>Shift</kbd>-<kbd>k</kbd></kbd>で Popup に定義を出せる。

# eskk.vim

- toggle
  > <kbd>jk</kbd>でトグルする。
  > ちなみに、<kbd>jj</kbd>で Normal Mode に移行できる。

# fzf.vim

> ファイル検索 (ここからは vim での操作)
>
> > space + f
> > ファイル名入れる
> > main.c
>
> もうひとつ開きたいファイルがあるのでファイル検索
>
> > space + f
> > ファイル名入れる
> > change.c
> > ファイル開く(画面分割-横)
> > ctrl-v
>
> ファイル上にあるこの関数使っているとこ調べたいので grep
>
> > space + r
> > 関数名いれる
> > change_warning
> > ファイル開く(画面分割-縦)
> > ctrl-x

# nvim-tree

## Toggle Tree
    - <kbd><C-b>e</kbd>
> `a`               create              add a file; leaving a trailing `/` will add a directory
> `d`               remove              delete a file (will prompt for confirmation)
> `D`               trash               trash a file via |trash| option
> `r`               rename              rename a file
> `<C-r>`           full_rename         rename a file and omit the filename on input
> `x`               cut                 add/remove file/directory to cut clipboard
> `c`               copy                add/remove file/directory to copy clipboard
> `p`               paste               paste from clipboard; cut clipboard has precedence over copy; will prompt for confirmation
> `y`               copy_name           copy name to system clipboard
> `Y`               copy_path           copy relative path to system clipboard
> `gy`              copy_absolute_path  copy absolute path to system clipboard


