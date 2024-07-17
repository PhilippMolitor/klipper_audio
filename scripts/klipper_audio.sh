#!/bin/bash

# Settings
SEARCH_DIR="~/printer_data/config/audio"
EXTENSIONS=("wav" "mp3" "ogg")

# Variavbles
BASENAME="$1"
PLAY_FILE=""

for ext in "${EXTENSIONS[@]}"; do
  if [[ -f "$SEARCH_DIR/$BASENAME.$ext" ]]; then
    PLAY_FILE="$SEARCH_DIR/$BASENAME.$ext"
    break
  fi
done

# Play sound if found
if [[ -n "$PLAY_FILE" ]]; then
  play "$PLAY_FILE"
else
  echo "error: sound not found"
fi
