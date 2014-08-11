#!/bin/bash

# Utility functions
source utils.sh

if which zsh &> /dev/null; then
  msg_success "Zsh already installed"
else
  msg_info "Installing Zsh (via Homebrew)"
  brew install zsh

  # Add zsh to /etc/shells
  msg_info "Adding zsh to /etc/shells"
  sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"

  # Set zsh as default shell
  msg_info "Making zsh the default shell"
  chsh -s /usr/local/bin/zsh $USER
fi
