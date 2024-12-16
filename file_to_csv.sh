#!/bin/bash

# 処理対象のディレクトリを指定
input_dir="/path/to/your/raw/files"

# 処理を開始
for raw_file in "$input_dir"/*.raw; do
    if [ -f "$raw_file" ]; then
        echo "Processing $raw_file"
        metavision_file_to_csv -i "$raw_file"
    else
        echo "No .raw files found in the directory: $input_dir"
    fi
done

echo "All files processed."
