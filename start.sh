#!/bin/bash

file_path="/app/config/mediamtx.xml"
link_path="/app/mediamtx.yml"
url="https://raw.githubusercontent.com/bluenviron/mediamtx/v0.23.5/mediamtx.yml"


echo " __  __          _ _       __  __ _______  __"
echo "|  \/  | ___  __| (_) __ _|  \/  |_   _\ \/ /"
echo "| |\/| |/ _ \/ _\` | |/ _\` | |\/| | | |  \  / "
echo "| |  | |  __/ (_| | | (_| | |  | | | |  /  \ "
echo "|_|  |_|\___|\__,_|_|\__,_|_|  |_| |_| /_/\_\\"

echo "Image by artificialbutter <3"
echo "=============================="

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

chmod +x mediamtx
./mediamtx