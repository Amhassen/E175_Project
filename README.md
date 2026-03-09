#Commit history:
#1: linked project to directory and created placeholder files .




#2: added lines to the script compare_seq.sh that satisfy the first two requirements of the assignment:  a line that takes two arguments
#which are the two FASTA filenames found in data/. those two files both only containt one sequence to be begin with, but there are still filters
#in place so that if a file contains multiple sequences, an error code will pop up explaining that each file must only contain one sequence
#that is the latter half fo the code written in this commit.



#3:added code to extract sequences from FASTA files, and then check their length to ensure that sequence 1 is equal in length to sequence 2.
#if this is not the case, an error message will appear 




#4: this is a debugging commit, I mitakenly type "file1" an "file22" in an if fi statement, instead of using "$file1" and "$file2". this 
#caused the script to look for files in ~/programming_project/data/ called "file1" and "file2", literally. I verified that the debugging was 
#successful by running ./compare_seq/sh on the two correct target files, and the output was as expected. for any future debugging
#I will document it in this file, and create a separate commit for it.



