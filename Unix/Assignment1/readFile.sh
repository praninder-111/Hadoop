#!/bin/bash
fileName=$1
echo "Number of words";wc -w $fileName 
echo "Number of lines";wc -l $fileName
awk '{print $2}' $fileName

