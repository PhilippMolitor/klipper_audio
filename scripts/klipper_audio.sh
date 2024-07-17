#!/bin/bash

# Settings
SEARCH_DIR="~/printer_data/config/audio"
EXTENSIONS=("wav" "mp3" "ogg")

# Variavbles
BASENAME="$1"
PLAY_FILE=""

for ext in "${EXTENSIONS[@]}"; do
  FILE=$(find "$SEARCH_DIR" -type f -name "$BASENAME.$ext" | head -n 1)
  if [[ -n "$FILE" ]]; then
    PLAY_FILE="$FILE"
    break
  fi
done

# Play sound if found
if [[ -n "$PLAY_FILE" ]]; then
  play "$PLAY_FILE"
else
  echo "error: sound not found"
fi
