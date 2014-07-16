#!/bin/bash

# Exit script if an error occurs
set -e

# Utility functions
source utils.sh

msg_info "Unlinking dotfiles"

for source in `find $HOME/.dotfiles -maxdepth 2 -name \*.symlink`; do
  dest="$HOME/.`basename ${source%.*}`"
  if [ -f $dest ] || [ -d $dest ]; then
    unlink $dest
    msg_success "Unlinked $dest"
  fi
done

msg "Done"
