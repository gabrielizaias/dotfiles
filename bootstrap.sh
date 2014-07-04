#!/bin/bash

# Exit script if an error occurs
# set -e

# Utility functions
source utils.sh

# Homebrew
if which brew &> /dev/null; then
    msg_success "Homebrew already installed"
else
    msg_info "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

function symlink_dotfiles {
    msg_info 'Linking dotfiles'

    overwrite_all=false
    backup_all=false
    skip_all=false

    for source in `find $HOME/.dotfiles -maxdepth 2 -name \*.symlink`; do
        dest="$HOME/.`basename ${source%.*}`"

        if [ -f $dest ] || [ -d $dest ]; then
            overwrite=false
            backup=false
            skip=false

            if ! $overwrite_all && ! $backup_all && ! $skip_all; then
                msg_warning "File already exists: `basename $source`, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all?"
                read -n 1 action

                case "$action" in
                    o )
                        overwrite=true;;
                    O )
                        overwrite_all=true;;
                    b )
                        backup=true;;
                    B )
                        backup_all=true;;
                    s )
                        skip=true;;
                    S )
                        skip_all=true;;
                    * )
                        ;;
                esac
            fi

            if $overwrite || $overwrite_all; then
                rm -rf $dest
                msg_success "Removed $dest"
            fi

            if $backup || $backup_all; then
                mv $dest $dest\.backup
                msg_success "Moved $dest to $dest.backup"
            fi

            if ! $skip && ! $skip_all; then
                link_files $source $dest
            else
                msg_success "Skipped $source"
            fi
        else
            link_files $source $dest
        fi
    done
}

symlink_dotfiles

# Find the installers and run them iteratively
find . -name install.sh | while read installer ; do sh -c "${installer}" ; done

# The end :)
msg "Done"
