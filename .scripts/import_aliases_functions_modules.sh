#!/bin/bash

# defined in .config/zsh/.zshenv
for dir in $ALIASES $FUNCTIONS $MODULES; do
    for file in "$dir"/.*.sh; do
        [ -f "$file" ] && source $file && echo "source $file from $dir"
    done
done