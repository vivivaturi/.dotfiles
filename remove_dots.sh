#!/bin/bash

set -e

# Moving two directory upwards to the root of the dotfiles
# from the scripts/ directory where this script

export DOTFILES=$(pwd -P)
TARGET=$HOME

# List of packages that has to installed via `stow`
DOTFILES_DIRS=$(ls -d $DOTFILES/*/ | awk -F "/" '{ print $(NF-1) }')

for F in $DOTFILES_DIRS ; do
    # if [[ $F = "scripts" ]]; then
    #     continue;
    # fi

    echo "~ Purging :: $F"

    # Remove previous links
    # NOTE: `stow` issues warning when working with absolute paths, so for now I am ignoring it
    # GHI: https://github.com/aspiers/stow/issues/65
    stow -D --dotfiles --dir $DOTFILES --target $TARGET $F 2>/dev/null
done

echo "Dotfiles have been removed"
