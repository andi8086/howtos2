#!/bin/bash

# Install pandoc
pandoc ../linux-tipps.md -o tipps.pdf --pdf-engine=xelatex \
	-V "mainfont:DejaVu Serif" \
	-V "sansfont:FreeSans" \
	-V "monofont:Envy Code R" \
	--toc \
	--listings -H listing-setup.tex \
	--include-in-header inline.tex \
	--verbose
