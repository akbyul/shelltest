#!/bin/bash
cat /etc/passwd | cut -d ':' -f 1 | awk 'NR%2==0' | rev | sort -r | awk "NR >= $FT_LINE1 && NR <= $FT_LINE2" | tr '\n' ',' | sed -e "s/,$/.\n/"
