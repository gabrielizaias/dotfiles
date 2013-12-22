#!/bin/bash

# Display a message on the prompt
function msg {
    printf "\r\033[0;37m  $1 \033[0m\n"
}

# Display an error message on the prompt
function msg_error {
    printf "\r\033[1;31m ✖  $1 \033[0m\n"
}

# Display success message on the prompt
function msg_success {
    printf "\r\033[00;32m ✔  $1 \033[0m\n"
}

# Display an info message on the prompt
function msg_info {
    printf "\r\033[00;34m ➔  $1 \033[0m\n"
}

# Display a warning message on the prompt
function msg_warning {
    printf "\r\033[00;33m ⚠  $1 \033[0m\n"
}

# Symlink files
function link_files {
    ln -s $1 $2
    msg_success "Linked $1 to $2"
}
