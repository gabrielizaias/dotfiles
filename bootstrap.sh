#!/bin/bash

# Exit script if an error occurs
set -e

# Utility functions
source utils.sh

# Homebrew
if which brew &> /dev/null; then
    msg_success "Homebrew already installed"
else
    msg_info "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi



function link_files {
    ln -s $1 $2
    success "Linked $1 to $2"
}
