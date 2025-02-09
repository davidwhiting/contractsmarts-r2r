#!/bin/bash

# Directory containing the zsh history files (default to current directory)
DIR=${1:-.}

# Process all .history files with UUID-like names
for file in "$DIR"/*.history; do
    # Skip if not a file
    [[ -f "$file" ]] || continue

    # Extract last modified timestamp (macOS version)
    timestamp=$(stat -f %m "$file")

    # Format timestamp as YYYY-MM-DD_HH-MM-SS (macOS version)
    formatted_date=$(date -r "$timestamp" +"%Y-%m-%d_%H-%M-%S")

    # Create new filename with timestamp and updated extension
    new_name="${DIR}/${formatted_date}.history.txt"

    # Check if the new name already exists
    if [[ -e "$new_name" ]]; then
        echo "Skipping $file: $new_name already exists."
    else
        mv "$file" "$new_name"
        echo "Renamed: $file → $new_name"
    fi
done
