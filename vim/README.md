# Install

## .vimrc
```bash
ln -fs ~/.dotfiles/vim/.vimrc ~/.vimrc
```

## Vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
```bash
git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
```bash
vim +PluginInstall +qall
```


## vim-colors-solarized
1. Go to this vim folder `cd ~/.dotfiles/vim`
1. Clone the repository `git clone git@github.com:altercation/vim-colors-solarized.git ~/.dotfiles/vim/vim-colors-solarized`
1. Create a vim colors folder `mkdir -p ~/.vim/colors`
1. Link the repository to the folder `ln -fs ~/.dotfiles/vim/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim`

## lightline.vim
1. `git clone git@github.com:itchyny/lightline.vim.git ~/.vim/bundle/lightline.vim`
