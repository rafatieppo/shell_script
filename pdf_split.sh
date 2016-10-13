#!/bin/bash
# Goal: split pdf in files
# for each 2 pages one pdf files
#using pdfjam

# step 1
# looping for all pages

## To get pairs of pages
K=1
L=2

# It must be from 1 until the number of persons
for i in {1..12}
do
## To jump the first line of LIST NAME
ii=$((i + 1))
## To assign a name from a list 
MM=$(sed "${ii}q;d" EMAIL.csv)
#$(sed -n "${ii}p" EMAIL.csv)

#MM=$(echo $MM | sed 's/@/%') 

   pdfjam --landscape CERTIFICATE_MODEL01.pdf $K-$L -o "$MM"
   K=$((K + 2))
   L=$((L + 2))
done

#echo $K
#echo "$MM"

## For add PDF extension in filename

for file in *@* ; 
do 
    mv "${file}" "${file/%/.pdf}"
done

