#!/bin/bash
# Split Planet Earth E2 into ~16 min segments
# Adapted from https://github.com/mvdoc/budapest-fmri-data/blob/master/scripts/preprocessing-stimulus/split_movie.sh
#
# AUTHOR : Joud Mar'i
# DATES  : 2022-06-01 Mike Tyszka Update path handling and refactor variables

src_dir="../Original"
out_dir="../Segments"

# Safely create output directory
mkdir -p ${out_dir}

mp4_fname=${src_dir}/"PlanetEarth_720p30_E2_Timestamped.mp4"

# Split timestamps (to the frame)
splits_fname="PlanetEarth2_Exact_Cuts.tsv"

while read -r clip start stop dur; do

  echo "Clip ${clip} Start: ${start} Stop: ${stop} Duration: ${dur}"

  out_fname=${out_dir}/PlanetEarth2_"${clip}".mp4

  ffmpeg  \
    -i ${mp4_fname} \
    -ss "${start}" \
    -to "${stop}" \
    -map_metadata -1 \
    -af compand="0|0:1|1:-90/-900|-70/-70|-30/-9|0/-3:6:0:0:0" \
    -c:a aac -vbr 5 \
    -c:v copy \
    -copyts \
    -y \
    ${out_fname} < /dev/null

done < ${splits_fname}
