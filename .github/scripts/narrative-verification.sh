#!/bin/bash

SEARCH_DIR="/input"

# Define the file extensions to include in the search
FILE_EXTENSIONS="txt|md|html|xml|json"

# Search for 'build.fhir.org' in the specified files
FOUND_URLS=$(grep -Erno "(https?://[^\"'<>]*build\.fhir\.org[^\"'<>]*)" $SEARCH_DIR --include=\*.{$FILE_EXTENSIONS})

if [ -n "$FOUND_URLS" ]; then
  echo "Error: Found external URLs including 'build.fhir.org' in the following files:"
  echo "$FOUND_URLS"
  exit 1
else
  echo "No external URLs including 'build.fhir.org' found."
fi
