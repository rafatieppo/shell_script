#!/bin/bash
# Goal: replace a specific text in a file
#In this case replace /home/rafatieppo/Dropbox/CSS/
# by ./PICS/ 

# step 1
# replace brackets by nothing
# ";"symbol add a second replacement



sed -i 's/\/home\/rafatieppo\/Dropbox\/CSS\//.\/PICS\//g' *.html


find . -type f -name "*baz*" -exec sed -i 's/\/home\/rafatieppo\/Dropbox\/CSS\//.\/PICS\//g' {} +

