#!/bin/bash

set -e

outdir=out-$(date "+%Y_%m_%d-%H_%M_%S")
mkdir "$outdir"
echo Saving transcoded files to $outdir

while IFS= read -r filename; do
    outpath="$outdir/$filename.mkv"
    dirpart=$(dirname "$outpath")
    mkdir -p "$dirpart"
    ./transcode.sh "$filename" "$outpath"
done
