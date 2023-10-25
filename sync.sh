#!/bin/bash
# pull add commit and push in the one script
git pull --ff
git add .
git commit -m "some changes"
git push -u origin main
