#!/usr/bin/env bash

#brew install antigen
#apt-get install zsh-antigen && [[[ make a link for the antigen.zsh file because the .zshrc is looking for it in /usr/local* ]]]]
#apt-get install most

(
  set -x; cd "$(mktemp -d)" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/krew.tar.gz" &&
  tar zxvf krew.tar.gz &&
  KREW=./krew-"$(uname | tr '[:upper:]' '[:lower:]')_$(uname -m | sed -e 's/x86_64/amd64/' -e 's/arm.*$/arm/')" &&
  "$KREW" install krew
)

(
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  cd ~/.fzf/
  ./install 
)

# Tmux plugin
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell



cp ../comforts/dotfiles/.zshrc $HOME/.zshrc
cp ../comforts/dotfiles/.p10k.zsh $HOME/.p10k.zsh
