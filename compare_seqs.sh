#!/usr/bin/env bash

#first step of  compare_seqs.sh script

# Accept two arugments: the two FASTA filesnames, present in data/

if [ "$#" -ne 2]; then 
echo "usage: $0 <seq1.fa> <seq2.fa>" >&2
exit 1 
fi
# the first line:  $# is number of arguments passed (we want 2 here), if it's not =2,  usage message will print and exit.


file1="$1"
file2="$2"


#to verify that  both files exist. if not, an error message will print:

if [ ! -f "file1" ]; then
echo "Error: File '$file1' does not exist." >&2
exit 1
fi
if [ ! -f "file2" ]; then
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

