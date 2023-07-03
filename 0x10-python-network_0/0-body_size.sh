#!/bin/bash

# Check if a URL is provided as an argument
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Store the URL from the command-line argument
url=$1

# Send the request and get the size of the response body
response=$(curl -s -w "%{size_download}" -o /dev/null "$url")

# Display the size of the response body
echo "Size of the response body: $response bytes"

