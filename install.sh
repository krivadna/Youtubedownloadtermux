#!/bin/bash

echo "Installing YouTube Downloader..."

# Update packages
pkg update -y && pkg upgrade -y

# Install required packages
pkg install -y python python-pip ffmpeg wget

# Install yt-dlp
pip install --no-cache-dir -U yt-dlp

# Create bin directory if it doesn't exist
mkdir -p $PREFIX/bin

# Download the compiled binary from GitHub Releases
wget https://github.com/krivadna/Youtubedownloadtermux/releases/download/v1.0/ytdl -O $PREFIX/bin/ytdl

# Make it executable
chmod +x $PREFIX/bin/ytdl

echo "Installation complete! Run 'ytdl <YouTube URL>' to start downloading."
