#!/bin/sh
sudo apt update
# reduce the number of interaction. 
# sudo apt upgrade --yes --force-yes 

# git
sudo apt install -y git git-extras tig hub wget 

# productivity
sudo apt install -y fd-find thefuck wget neovim tmux zplug zsh peco lnav silversearcher-ag mc ranger tree aria2

# python development install
sudo apt install -y python3 python3-pip

# kotlin
sudo apt install -y default-jdk

wget -O sdk.install.sh "https://get.sdkman.io"
apt install zip unzip -y
bash sdk.install.sh
source "/root/.sdkman/bin/sdkman-init.sh"
sdk install kotlin


#zsh
ZSH_CUSTOM=~/.oh-my-zsh/custom
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions
git clone https://github.com/zdharma/fast-syntax-highlighting.git $ZSH_CUSTOM/plugins/fast-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

sed -i -e "s/plugins=(git)/plugins=(git osx z vagrant docker sudo vi-mode fast-syntax-highlighting zsh-completions)/g" .zshrc

# vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
alias nvim=vim
# git
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh

# tmux
mv ~.tmux.conf ~.tmux.conf.bak
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f ~/.tmux/.tmux.conf
cp ~/.tmux/.tmux.conf.local ~

# dev virtuatalisation
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zsh_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zsh_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zsh_profile

git clone https://github.com/gcuisinier/jenv.git ~/.jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc

git clone git://github.com/scalaenv/scalaenv.git ~/.scalaenv
echo 'export PATH="${HOME}/.scalaenv/bin:${PATH}"' >> ~/.zshrc
echo 'eval "$(scalaenv init -)"' >> ~/.zshrc
