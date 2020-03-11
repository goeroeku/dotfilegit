## Repository File Dot
Backup file config, profile dll

#### How to
- cd ~
- clone this repo to .dotfilegit
- change user, (my username is aic)
- ln all file
# ln -sf .dotfilegit/.zshrc 
# ln -sf .dotfilegit/.profile

#### set utilities
1) nvm
```
yay -S nvm
mkdir -p $HOME/.nvm
export NVM_DIR="$HOME/.nvm"
ln -sf /usr/share/nvm/nvm.sh $NVM_DIR
ln -sf /usr/share/nvm/bash_completion $NVM_DIR
```
