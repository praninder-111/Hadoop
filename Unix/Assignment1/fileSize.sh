#!/bin/bash
echo -e "Answer 2a"
ls -l test/assign2/|awk '{print $5" "$6" "$7}' > test/assign2/output.txt
echo -e "Answer 2b"



