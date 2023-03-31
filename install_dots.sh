#!/bin/bash

set -e

export DOTFILES=$(pwd -P)
TARGET=$HOME

# List of packages that has to installed via `stow`
DOTFILES_DIRS=$(ls -d $DOTFILES/*/ | awk -F "/" '{ print $(NF-1) }')

for F in $DOTFILES_DIRS ; do
    # Don't install scripts/
    # if [[ $F = "scripts" ]]; then
    #     continue;
    # fi

    echo "~ Installing :: $F"

    # Remove previous links
    # NOTE: `stow` issues warning when working with absolute paths, so for now I am ignoring it
    # GHI: https://github.com/aspiers/stow/issues/65
    stow -D --dotfiles --dir $DOTFILES --target $TARGET $F 2>/dev/null

    # Installed new links
    stow --dotfiles --dir $DOTFILES --target $TARGET $F
done

echo 'Dotfiles are installed'
