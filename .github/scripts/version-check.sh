#!/bin/bash

# Path to your dependencies file
DEPENDENCIES_FILE="dependencies.xml"

# Check if the file exists
if [ ! -f "$DEPENDENCIES_FILE" ]; then
  echo "Error: Dependencies file '$DEPENDENCIES_FILE' not found."
  exit 1
fi

# Extract all version values
VERSION_VALUES=$(xmllint --xpath '//dependsOn/version/@value' "$DEPENDENCIES_FILE" 2>/dev/null | \
sed 's/ value="/\n/g' | sed '1d' | cut -d'"' -f1)

# Regular expression for valid version formats
VALID_VERSION_REGEX='^[0-9]+\.[0-9]+\.[0-9]+(-[A-Za-z0-9]+)?$'

ERROR_FOUND=0

# Iterate over each version value
while read -r VERSION; do
  if [ "$VERSION" = "current" ]; then
    echo "Error: Version value 'current' is not allowed."
    ERROR_FOUND=1
  elif ! [[ $VERSION =~ $VALID_VERSION_REGEX ]]; then
    echo "Error: Version value '$VERSION' does not match the required format x.x.x or x.x.x-stringabc."
    ERROR_FOUND=1
  fi
done <<< "$VERSION_VALUES"

if [ $ERROR_FOUND -eq 1 ]; then
  exit 1
else
  echo "All version values are valid."
fi
