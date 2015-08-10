#!/bin/bash

# Variables
QUALITY=2
OUTPUTDIR="."

# Iterates over all .flac files in directory
for FILE in *.flac
do 
  # Summons ffmpeg command with current file as input, and uses the libmp3lame codec.
  ffmpeg -i "$FILE" -codec:a libmp3lame -q:a $QUALITY "$OUTPUTDIR/${FILE%.*}.mp3";
done
