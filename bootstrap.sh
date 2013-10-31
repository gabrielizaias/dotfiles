#!/bin/sh

# Exit script if an error occurs
set -e

# Display a message on the prompt
function msg {
    echo "\033[0;37m$1\033[0m";
}

# Display an error message on the prompt
function msg_error {
    echo "\033[1;31m✖ Error: $1\033[0m";
}

# Display success message on the prompt
function msg_success {
    echo  "\033[1;32m✔ $1 \033[0m";
}

# Display success message on the prompt
function msg_info {
    echo  "\033[00;34m☞ $1 \033[0m";
}

function link_files {
    ln -s $1 $2
    success "Linked $1 to $2"
}
