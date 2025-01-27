# Install

## .zshrc
```bash
ln -fs ~/.dotfiles/zsh/.zshrc ~/.zshrc
```

## Install oh-my-zsh now
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### How to install zsh-syntax-highlighting
```bash
git clone git@github.com:zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```
```bash
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

## typical shortcuts commands / alias
## git

git log
```bash
glg
  ```

git commit --message

``` bash
gcmsg [$1 message]
```

cat match branches
``` bash
gbrf [$1 like branch name]
```

create .gitignore file with .DS_Store && nodemodules && coverage
``` bash
gignm
```

## sh
ZSH config reloaded from ~/.zshrc
``` bash
reload
```


## dev
load pyenv local environment
``` bash
pyenv
```

npm run dev
``` bash
npmd
```

yarn run dev
``` bash
yarnd
```
