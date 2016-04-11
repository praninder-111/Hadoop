#!/bin/bash
ls -l test/assign2/|awk '{print $5" "$6" "$7}' > test/assign2/output.txt
if [$?]
echo "File outputfile generated successfully"
echo -e "Answer 2b"



