#!/bin/bash

INPUT="$1"
shift
OUTPUT="$1"
shift

if [ -z "$INPUT" ]; then
    echo "Missing input file."
    exit 1
fi

if [ -z "$OUTPUT" ]; then
    echo "Missing output file."
    exit 1
fi

set -e

ffmpeg -nostdin \
    -i "$INPUT" \
    -c:v libx265 -crf 21 -preset ultrafast \
    -c:a libopus -b:a 128k \
    -f matroska "$OUTPUT" 

