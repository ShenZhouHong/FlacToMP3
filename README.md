# FlacToMP3
Simple bash script that converts all ```.flac``` media files into ```.mp3```.

## Dependencies
1. [ffmpeg](https://www.ffmpeg.org/)

## Usage
Make sure FlacToMP3 has the correct permissions to execute, and the files are in a directory that is writable:

    chmod a+x ./FlacToMP3

Execute script with bash

    bash ./FlacToMP3

## Configuration Options
### Output quality
The output mp3 quality can be set in the variables session. Default value is ```QUALITY=2```, allowing a good balance between audio quality and filesize. **Lower is better**.

### Audio Codec
ffmpeg requires the specification of an external audio codec in order to conduct conversion operations. The default value is ```CODEC="a libmp3lame"``` which should work for most operating systems. If your OS uses a different default codec, consult the [FFmpeg Codecs Documentation](https://www.ffmpeg.org/ffmpeg-codecs.html) to find out more.

### Output Directory
By default, FlacToMP3 is configured to output the converted files in the current directory: ```OUTPUTDIR="."```. Any relative or absolute filepath can be specified. This is especially helpful when running autonomously (e.g. via cronjob). FlacToMP3 checks the current dir for input files by default.

### Input type & output type
Although FlacToMP3's default function is to convert ```.flac``` files to ```.mp3``` files, it could be extended to convert a broader set of audio formats using ffmpeg and other codecs. Those file endings (without the dot) can be specified there.

