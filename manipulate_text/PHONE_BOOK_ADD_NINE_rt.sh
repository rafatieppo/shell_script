#!/bin/bash
# Goal: to organize phonebook

# Export the phone book with '.cvs' format
# Get only phone numbers column from the phonebook (use some editor)

# step 1
# replace brackets by nothing
# ";"symbol add a second replacement
		
sed 's/(//g; s/)//g' < L1.csv > L2.csv

# step 2
# eleminating 0 from DDD
# for each line
# if
# start with 0 
# than
# replace the second character by nothing
# notice '/2' means replace second character
sed '/^"0/s/.//2' < L2.csv > L3.csv
#sed '/^"0/!s/.//2' < L2.csv > L3.csv # '!' negative form

# step 3
# add DDD code
# if
# There is no DDD code
# than
# dd 65 # 65 because the most of my contacts are area code 65
sed '/^"[89]/s/./65&/2' < L3.csv > L4.csv

#step 4
# add + 55
sed '/^"+/!s/./+55&/2' < L4.csv > L5.csv

# step 5  
# clear spaces and '-'
sed 's/ //g;  s/-//g' < L5.csv >L6.csv

# step 6
# remove no phone numbers
#sed '/^"+[0-9][0-9][0-9]/!s/+[A-Za-z0-9]*//g' < L6.csv > L7.csv
#sed '/^"+[0-9][0-9][0-9]/!s/.*/""/g' < L6.csv
sed '/^"+\([0-9]\{8\}\).*/!s/.*/""/g' < L6.csv > L7.csv # best choice

# step 7
# add number 9 in 6? area code
sed '/^"+55[6]/s/./9&/7' < L7.csv > L8.csv

#step 8
# del '"' for R read.table
sed 's/"//g' < L8.csv > L9.csv


# step 9
# delete 1st line
tail -n +2 < L9.csv > Ldone.csv


# step 8
# add ',' to separate '.csv'
#sed '/^/s//&,/g' < L8.csv > Ldone.csv

