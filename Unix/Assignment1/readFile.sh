#!/bin/bash
fileName=$1
echo -e "\e[1mAnswer1"
echo "Number of words";wc -w $fileName 
echo "Number of lines";wc -l $fileName
awk '{print $2}' $fileName
sed -i.bak -e s/raj/ram/gI $fileName                                                                                                                          
cat $fileName                                                                                                                                                 
mv employee.bak employee
