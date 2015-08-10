#!/bin/bash

# Variables
QUALITY=2
CODEC="a libmp3lame"
OUTPUTDIR="."
INPUTTYPE="flac"
OUTPUTTYPE="mp3"

# Main program function
function FlacToMP3 () {
  # First makes sure that input type and output type are flac and mp3, respectively
  if [ $INPUTTYPE == "flac" ] && [ $OUTPUTTYPE == "mp3" ]
    then
      # Iterates over all .flac files in directory
      for FILE in *.flac
      do
        # Summons ffmpeg command with current file as input, and uses the libmp3lame codec.
        ffmpeg -i "$FILE" -codec:$CODEC -q:a $QUALITY "$OUTPUTDIR/${FILE%.*}.mp3";
      done

  # If input file format and output file format doesn't make sense, then
  else
    echo "Error, $INPUTTYPE and $OUTPUTTYPE mismatch: doesn't make sense!"
    exit 1;
  fi
}

echo "Starting FlacToMP3, version 1.0.0."
FlacToMP3
echo "All done, exiting!"
exit 0
