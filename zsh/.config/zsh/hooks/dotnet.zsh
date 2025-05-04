[[ -d "$HOME/.dotnet/tools" ]] && export PATH="$PATH:$HOME/.dotnet/tools"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
[[ -f "$HOME/.asdf/plugins/dotnet/set-dotnet-env.zsh" ]] && source "$HOME/.asdf/plugins/dotnet/set-dotnet-env.zsh"
