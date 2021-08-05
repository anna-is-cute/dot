######################
# Version management #
######################

if [[ ! -d "$HOME/.asdf" ]]; then
  git clone https://github.com/asdf-vm/asdf.git "$HOME/.asdf"
  git -C "$HOME/.asdf" checkout "$(git -C "$HOME/.asdf" describe --abbrev=0 --tags)"
fi

if [[ -d "$HOME/.asdf" ]]; then
  fpath=($fpath "$HOME/.asdf/completions/")
  source "$HOME/.asdf/asdf.sh"
fi

[[ -x $(command -v thefuck) ]] && eval "$(thefuck --alias)"

[[ -x /home/linuxbrew/.linuxbrew/bin/brew ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
