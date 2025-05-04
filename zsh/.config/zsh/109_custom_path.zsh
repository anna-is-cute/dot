########
# Path #
########

# add ~/.local/bin
if [[ -d ~/.local/bin ]]; then
  export PATH=$PATH:~/.local/bin
fi

# add bun
if [[ -d ~/.bun/bin ]]; then
  export PATH=$PATH:~/.bun/bin
fi

export PATH=$PATH:/usr/local/sbin:/usr/local/bin

# add pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
