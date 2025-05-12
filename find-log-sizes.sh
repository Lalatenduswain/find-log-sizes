#!/bin/bash

# Prompt for the base directory
read -rp "Enter the base directory to search for .log files (e.g., /var/www): " BASE_DIR

# Validate input
if [ ! -d "$BASE_DIR" ]; then
    echo "Error: Directory '$BASE_DIR' does not exist."
    exit 1
fi

# Print header
printf "\n%-80s %-25s %-10s\n" "Directory" "Log File" "Size"
printf -- "------------------------------------------------------------------------------------------------------------\n"

# Find and list .log files with sizes
find "$BASE_DIR" -type f -name "*.log" | while read -r file; do
    dir_path=$(dirname "$file")
    file_name=$(basename "$file")
    file_size=$(du -h "$file" | cut -f1)
    printf "%-80s %-25s %-10s\n" "$dir_path" "$file_name" "$file_size"
done
