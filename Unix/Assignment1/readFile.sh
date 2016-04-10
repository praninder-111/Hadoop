#!/bin/bash
fileName=$1
echo -e "\e[5mAnswer 1a & 1b"
echo "Number of words";wc -w $fileName 
echo "Number of lines";wc -l $fileName
echo -e "\e[5mAnswer 1c"
awk '{print $2}' $fileName
echo -e "\e[5mAnswer1d"
sed -i.bak -e s/raj/ram/gI $fileName                                                                                                                          
cat $fileName                                                                                                                                                 
mv employee.bak employee
