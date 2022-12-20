#!/usr/bin/bash
for f in *.pdf;
	do
	   mv -- "$f" "${f%.pdf}.txt"
	done
