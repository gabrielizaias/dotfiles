#!/bin/bash

# Utility functions
source utils.sh

if which git &> /dev/null; then
    msg_success "Git already installed"
else
    msg_info "Installing Git (via Homebrew)"
    brew install git
fi
