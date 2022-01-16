# Settings


## Backup Extensions
```bash
code --list-extensions | xargs -L 1 echo code --install-extension > ~/.dotfiles/vscode/vscode-extensions.txt
```

```bash
code --list-extensions
```

## a) Link setup

Settings & Keybindings
```bash
cd ~/Library/Application\ Support/Code/User

rm settings.json
ln -s ~/.dotfiles/vscode/settings.json settings.json

rm keybindings.json
ln -s ~/.dotfiles/vscode/keybindings.json keybindings.json
```

## b) Copy setup (backup and restore)

Settings

```bash
cp ~/Library/Application\ Support/Code/User/settings.json ~/.dotfiles/vscode
```

Keybindings
```bash
cat ~/Library/Application\ Support/Code/User/keybindings.json > ~/.dotfiles/vscode/keybindings.json
```

# Shortcuts vscode / vim
- [Link Vim Extension](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
- <kbd>shift</kbd>+<kbd>cmd</kbd>+<kbd>n</kbd> Change Tag with Emmet

![image](https://res.cloudinary.com/practicaldev/image/fetch/s--XSlzO9Lm--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://cdn.hashnode.com/res/hashnode/image/upload/v1562235200819/Dpi0XgmSj.gif)

- <kbd>shift</kbd>+<kbd>cmd</kbd>+<kbd>m</kbd> Go to Matching Tag with Emmet
- <kbd>v</kbd> <kbd>i</kbd> <kbd>t</kbd> Select In Tag
- <kbd>v</kbd> <kbd>i</kbd> <kbd>a</kbd> Select All Tag
- <kbd>d</kbd> <kbd>i</kbd> <kbd>t</kbd> Delete In Tag
- <kbd>d</kbd> <kbd>s</kbd> <kbd>t</kbd> Delete Surrounding Tag

![image](https://res.cloudinary.com/practicaldev/image/fetch/s--AT6vuMxK--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://cdn.hashnode.com/res/hashnode/image/upload/v1561899815957/rY6Rk-Qp8.gif)

- <kbd>c</kbd> <kbd>s</kbd> <kbd>'</kbd> <kbd>"</kbd> Change single quote to double quote

![image](https://res.cloudinary.com/practicaldev/image/fetch/s--wYmgeX93--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://cdn.hashnode.com/res/hashnode/image/upload/v1561905097925/PfR687VHY.gif)

- <kbd>></kbd> Ident Code shift to right. <kbd>.</kbd> To repeat. [More in](https://vim.fandom.com/wiki/Shifting_blocks_visually)
- <kbd><</kbd> Ident Code shift to left. <kbd>.</kbd> To repeat. [More in](https://vim.fandom.com/wiki/Shifting_blocks_visually)
- <kbd>.</kbd> Repeat last operation

- <kbd>v</kbd> <kbd>a</kbd> <kbd>B</kbd> Select All Block
- <kbd>v</kbd> <kbd>i</kbd> <kbd>B</kbd> Select In Block


## Editor
- <kbd>cmd</kbd> + <kbd>b</kbd> Show and Hide Side Bar
- <kbd>alt</kbd> + <kbd>cmd</kbd> + <kbd>b</kbd> Show and Hide Icons Side Bar
- <kbd>shift</kbd> + <kbd>cmd</kbd> + <kbd>e</kbd> Show Explorer
- <kbd>ctrl</kbd> + <kbd>G</kbd> Show Source Control (Git)
- <kbd>shift</kbd> + <kbd>cmd</kbd> + <kbd>x</kbd> Show Extensions
- <kbd>cmd</kbd> + <kbd>j</kbd> Show and Hide Terminal
- <kbd>ctrl</kbd> + <kbd>w</kbd> + <kbd>w</kbd> Focus Next Panel # vim / vscode
- <kbd>ctrl</kbd> + <kbd>w</kbd> + <kbd>s</kbd> Sprit Panel # vim / vscode
- <kbd>ctrl</kbd> + <kbd>w</kbd> + <kbd>w</kbd> Sprit Panel Vertical # vim / vscode
- :vsp filename.txt Split Panel Vertical and open new file # vim / vscode


vim plugin https://github.com/tpope/vim-surround (or use VSCode Vim plugin, which comes with vim-surround pre-installed)

- <kbd>y</kbd> <kbd>s</kbd> <kbd>i</kbd> <kbd>w</kbd> <kbd>'</kbd> add surround in word `'`
- <kbd>d</kbd> <kbd>s</kbd> <kbd>'</kbd> drop surround `'`
- <kbd>c</kbd> <kbd>s</kbd> <kbd>'</kbd> <kbd>"</kbd> change surround from `'` to `"`
It even works for html tags!
- <kbd>c</kbd> <kbd>s</kbd> <kbd>t</kbd> `<em>` // change surround from current tag to `<em>`
check out the readme on github for better examples

### Focus
- <kbd>cmd</kbd> + <kbd>0</kbd> Focus (show) on Side Bar
- <kbd>cmd</kbd> + <kbd>1</kbd> Focus on 1 code Panel
- <kbd>cmd</kbd> + <kbd>2</kbd> Focus (create) on 2 code Panel
- <kbd>ctrl</kbd> + <kbd>`</kbd> Toggle Focus (show and hide) on Terminal
- <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>`</kbd> Create a New Terminal and give it Focus
- <kbd>cmd</kbd> + <kbd>→</kbd> Focus on Next Terminal
- <kbd>cmd</kbd> + <kbd>←</kbd> Focus on Prev Terminal
- <kbd>cmd</kbd> + <kbd>k</kbd> <kbd>v</kbd> Focus (show) Preview Panel

#### Cursor
- <kbd>h</kbd> <kbd>j</kbd> <kbd>k</kbd> <kbd>l</kbd> Move ← ↓ ↑ →
- <kbd>^</kbd> Go to first non space character of line
- <kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>i</kbd> Set multiples cursors at end lines on selected lines to edit
- <kbd>g</kbd> <kbd>g</kbd> Go to first line of file
- <kbd>shift</kbd> + <kbd>g</kbd> Go to last line of file
- <kbd>[#]</kbd> <kbd>shift</kbd> + <kbd>g</kbd> Go to number [#] line of file
- <kbd>shift</kbd> + <kbd>a</kbd> Set cursor at end of line to edit
- <kbd>shift</kbd> + <kbd>i</kbd> Set cursor at start of line to edit
- <kbd>shift</kbd> + <kbd>$</kbd> Set cursor at start of line
- <kbd>shift</kbd> + <kbd>0</kbd> Set cursor at start of line
- <kbd>f</kbd> <kbd>[char]</kbd> Set cursor at first finded character at right to cursor
- <kbd>shift</kbd> + <kbd>f</kbd> <kbd>[char]</kbd> Set cursor at first finded character at left to cursor
