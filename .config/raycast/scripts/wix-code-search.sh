#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Wix Code Search
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName Developer Utils

# Documentation:
# @raycast.description Search Wix's code on GitHub
# @raycast.author Dolev Hadar
# @raycast.authorURL https://github.com/dlvhdr
# @raycast.argument1 { "type": "text", "placeholder": "search query", "percentEncoded": true }

if [ -z "$1" ]; then
	echo "Enter a search query!";
	exit 1;
fi

open "https://github.com/search?type=code&q=org%3Awix-private%20$1"
echo "Searched for $1 in wix-private"
