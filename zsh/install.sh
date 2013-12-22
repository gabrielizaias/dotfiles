#!/bin/bash

# Utility functions
source utils.sh

if which zsh &> /dev/null; then
    msg_success "Zsh already installed"
else
    msg_info "Installing Zsh (via Homebrew)"
    brew install zsh
fi
