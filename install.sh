#!/usr/bin/env bash
set -e

squid(){
	FILE="$HOME/.nanorc"
	URL=""

	# Check if the user already have the nanorc
	if [ -f "$FILE" ]; then
		echo "File nanorc already in the system (not modified)"
		exit 0
	fi

	# Install configuration for nano

	curl

	printf "New configuration for nano:\n\n"
	cat "$FILE"
}

squid
