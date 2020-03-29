#!/bin/sh
sudo apt update
# sudo apt upgrade --yes --force-yes

# devs
sudo apt install -y git curl git-extras fd-find thefuck tig hub wget neovim tmux zplug zsh peco lnav silversearcher-ag mc ranger tree aria2

# python development install
sudo apt install -y python3 python3-pip

#zsh
export ZSH_CUSTOM=~/.oh-my-zsh/custom
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions
git clone https://github.com/zdharma/fast-syntax-highlighting.git $ZSH_CUSTOM/plugins/fast-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

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
