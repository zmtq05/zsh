alias v=nvim

function vz {
  if [[ ! -f "$1" ]]; then
    nvim $(fzf -q "$1" -1)
  else
    nvim "$@"
  fi
}

#zinit from"gh-r" sbin"**/nvim" for neovim/neovim
