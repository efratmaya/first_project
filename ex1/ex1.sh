#!/bin/bash

# Function to display usage instructions and exit
usage() {
    echo "Usage: $0 <target_directory> <image_url1> [<image_url2> ...]"
    exit 1
}
# Check if target directory is provided
if [ -z "$1" ]; then
    usage
fi
target_dir="$1"

# Validate and create target directory if it doesn't exist
if [ ! -d "$target_dir" ]; then
    echo "Creating target directory: $target_dir"
    mkdir -p "$target_dir" || exit 1
fi
# Function to download an image
download_image() {
    local url="$1"
    echo "$url"
    local filename="$(basename "$url")"
    if [[ $url == http* ]]; then
        wget --no-check-certificate -P "$target_dir" "$url"
        echo "Downloaded: $filename"
    else
        echo "Invalid URL: $url"
    fi
}
# Loop through image URLs and download images
for url in "${@:2}"; do
    download_image "$url"
done

# Create archive with current time as name
archive_name="$target_dir/images_$(date +'%Y%m%d%H%M%S').zip"
echo "Creating archive: $archive_name"
zip -r "$archive_name" "$target_dir"

echo "Process completed successfully."

