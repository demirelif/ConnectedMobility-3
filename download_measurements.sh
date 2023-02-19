#!/bin/bash

# Array of curl IDs
ids=(49498522 49340384 49340370 49340294 49340274 49340255)

# Loop through the array of IDs
for id in "${ids[@]}"; do
  # Set the file name using the ID
  filename="satellite_traceroute_$id.json"

  # Run curl with the ID and save the output to the file
  curl "https://atlas.ripe.net/api/v2/measurements/$id/results/?start=1675372722&stop=1675983300&format=json" -o "$filename"
done