# MediaMTX Docker Image
### Built for use with unraid (and my MediaMTX Unraid template at [artificialbutter/UnraidTemplates](https://github.com/artificialbutter/UnraidTemplates/blob/main/mediamtx.xml))

## Why not just use the official MediaMTX docker image?
~~This image copies & symlinks the MediaMTX config to the /config directory, so that you can edit it without having the entire app folder mounted. <br>
I'm new to docker, so there's probably a way to do this with the official image but I couldn't figure it out.~~

The official MediaMTX docker image has been updated to allow config with environment variables, this image is no longer necessary.

## Tags
- `latest` - MediaMTX, no ffmpeg
- `ffmpeg` - MediaMTX, with ffmpeg

## Updating
~~This repository & docker image will be automatically updated every Sunday, using github actions.~~ 

This image is no longer maintained.