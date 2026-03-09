#!/usr/bin/env bash

#first step of  compare_seqs.sh script

# Accept two arugments: the two FASTA filesnames, present in data/

if [ "$#" -ne 2 ]; then 
echo "usage: $0 <seq1.fa> <seq2.fa>" >&2
exit 1 
fi
# the first line:  $# is number of arguments passed (we want 2 here), if it's not =2,  usage message will print and exit.


file1="$1"
file2="$2"


#to verify that  both files exist. if not, an error message will print:

if [ ! -f "$file1" ]; then
echo "Error: File '$file1' does not exist." >&2
exit 1
fi
if [ ! -f "$file2" ]; then
echo "Error: file '$file2' does not exist." >&2
exit 1
fi
echo "both input files found!"

#check for exactly one sequence per file:
headers1=$(grep -c '^>' "$file1")
headers2=$(grep -c '^>' "$file2")
if [ "$headers1" -ne 1 ]; then echo "Error:  file '$file1' MUST contain only 1 sequence." >&2
exit 1
fi
if [ "$headers2" -ne 1 ]; then echo "Error:  file '$file2' MUST contain only 1 sequence." >&2
exit 1
fi
echo "Both files exist and contain exactly one sequence :)"

#to check if both sequences are of the same length:

#first, remove header lines (in the case of the sequences I have, they are both one-line long, but if we were comparing sequences that stretch across 
#multiple lines, "tr -d '\n'" would ensure that the sequence is uninterrupted by start-of-line characters.

seq1=$(grep -v '^>' "$file1" | tr -d '\n')
seq2=$(grep -v '^>' "$file2" | tr -d '\n')

len1=${#seq1}
len2=${#seq2}

if [ "$len1" -ne "$len2" ]; then echo "Error: sequences must be of the same length..." >&2
exit 1
fi
echo "Sequences are of same length! ($len1 bases)."

