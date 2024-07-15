#!/bin/bash

# Set the source directory
source_dir="/path/to/source"

# Move image files to the Images directory
find "$source_dir" -type f -iname "*.jpg" -exec mv -t "$source_dir/Images/" {} +

# Move text files to the Documents directory
find "$source_dir" -type f -iname "*.txt" -exec mv -t "$source_dir/Documents/" {} +
