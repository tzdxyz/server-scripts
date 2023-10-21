#!/bin/bash
# backup important files in the server 

file=backup$(date '+%Y-%m-%d_%H').zip
zip $file ../data ../notes

mv $file ~/
