typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH
fpath=("$HOME/.zprompts" "$fpath[@]")
