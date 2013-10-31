#!/bin/sh

# Exit script if an error occurs
set -e

# Display a message on the prompt
function msg {
    echo "\033[0;37m$1\033[0m";
}

# Display an error message on the prompt
function error {
    echo "\033[1;31m✖ Error: $1\033[0m";
}

# Display success message on the prompt
function success {
    echo  "\033[1;32m✔ $1 \033[0m";
}

# Display success message on the prompt
function info {
    echo  "\033[00;34m☞ $1 \033[0m";
}
