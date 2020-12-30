#!/bin/bash

rm *.txt
while read line ;
do
  wget $line
  curl $line >> mega-list.txt
done < lists
cat custom-whitelist >> mega-list.txt
