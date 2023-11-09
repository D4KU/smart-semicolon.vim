This tiny vim plugin provides an insert-mode mapping to intelligently place
semicolons within the current line. This is useful for C-like languages where
a semicolon marks the end of a line and is seldomly found somewhere else.

Upon pressing `;` in insert-mode, if every one of the following conditions is
met, the semicolon is placed at the end of the current line. Otherwise, it is
placed under the cursor as usual:

* The current line ends with an alpha-numerical ASCII character, one of the
  following characters: `_)]'"`, `--`, or `++`
* The current line does not start with `for (`, ignoring whitespace
* The next line is not further indented as the current one or is empty
* The next line does not end with `{`, ignoring whitespace
* The cursor is not positioned past the end of the current line
* The cursor is outside a highlight group whose name contains the string
  `comment`

If the semicolon is placed at the end of the line, trailing whitespace is
removed.


## Installation

With [vim-plug](https://github.com/junegunn/vim-plug):
```
Plug 'D4KU/smart-semicolon.vim'
```

## Customization

This plugin is only enabled for specific file-types. Change them by assigning
a list to the following variable:

```
    let g:smart_semicolon_filetypes = `['c', 'cpp', 'cs', 'cuda', 'hlsl', 'glsl', 'css']`
```
