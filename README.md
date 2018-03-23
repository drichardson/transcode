Transcode a batch of video files according to the ffmpeg settings
in transcode.sh.

Current settings are:

- Matroska container
- H265 video codec
- Opus audio codec

The input file should be a list of newline separated paths of video files to transcode.
For example:

    /path/to/file1.dv
    /path/to/file2.dv

The output will be written in a timestamp named directory.
