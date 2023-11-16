############
# Antibody #
############

if [[ ! -d ~/.config/zsh/antidote && -x $(command -v git) ]]; then
  echo 'Cloning antibody...'
  git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.config/zsh/antidote
fi

if [[ -e ~/.config/zsh/antidote/antidote.zsh ]]; then
  source ~/.config/zsh/antidote/antidote.zsh

  zstyle ':antidote:bundle' file ~/.config/zsh/zsh-plugins.txt
  zstyle ':antidote:static' file ~/.config/zsh/zsh-plugins.zsh.static

  antidote load
fi
