# FIXME: why does this not work
# source <(jj util completion --zsh)

TEMP_COMP_FILE="$(mktemp)"
jj util completion --zsh > "$TEMP_COMP_FILE"
source "$TEMP_COMP_FILE"
rm "$TEMP_COMP_FILE"

unset TEMP_COMP_FILE
