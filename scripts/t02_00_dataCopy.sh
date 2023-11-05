#!/bin/bash

part='train'
# Specify the source directory and target directory
source_directory="/home/vpiatrou/learning/GST/datasets/TPUGraphs/raw/npz/layout/xla/random/"$part
target_directory="/home/vpiatrou/learning/GST/datasets/TPUGraphs/raw/npz/layout/xla/all/"$part

# Move to the source directory
cd "$source_directory"

# Loop through all files in the source directory
for file in *; do
    # Check if the current item is a file
    if [ -f $file ]; then
        # Create a symbolic link in the target directory with the new name
        ln -s "$source_directory/$file" "$target_directory/_${file}"
        echo "Linked $file to _${file}"
    fi
done