#!/bin/bash

case "$1" in
	*.pdf) pdftotext "$1" ;;
	*.md) pandoc -s -t markdown -- "$1" ;;
	*.zip) zipinfo "$1" ;;
	*.7z) 7z l "$1" ;;
	*.*) bat --color=always --italic-text=always --theme="gruvbox-dark" --style=numbers,changes,header --line-range :500 "$1" ;;
esac
