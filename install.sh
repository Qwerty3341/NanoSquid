#!/usr/bin/env bash
set -e

squid(){
	local FILE="$HOME/.nanorc"
	local URL="https://raw.githubusercontent.com/Qwerty3341/NanoSquid/refs/heads/main/nano_config.txt"

	# Check if the user already have the nanorc
	if [ -f "$FILE" ]; then
		echo "File nanorc already in the system (not modified)"
		exit 0
	fi

	# Install configuration for nano
	curl -fsSL "$URL" -o "$FILE"

	printf "New configuration for nano:\n\n"
	cat "$FILE"
}

squid
