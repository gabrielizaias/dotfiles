#!/bin/bash

# Exit script if an error occurs
set -e

# Utility functions
source utils.sh




function link_files {
    ln -s $1 $2
    success "Linked $1 to $2"
}
