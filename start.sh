#!/bin/bash

file_path="/app/config/mediamtx.xml"
link_path="/app/mediamtx.yml"
url="https://raw.githubusercontent.com/bluenviron/mediamtx/v0.23.5/mediamtx.yml"

if [ ! -f "$file_path" ]; then
  echo "Config not found. Downloading config..."
  curl -o "$file_path" "$url" -s
  echo "Download complete!"
else
  echo "Config exists."
fi

if [ ! -L "$link_path" ]; then
  echo "Creating symbolic link: $link_path -> $file_path"
  ln -s "$file_path" "$link_path"
  echo "Symbolic link created!"
fi

echo "Starting..."
echo "=============================="

./mediamtx