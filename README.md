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

#5: this commit contains the edits to this .md file. added lines to compare_seq.sh so that the script will now compare the two sequence base-by-base
#and print out any mismatches found in the following order: position, then base at sequence 1, and then base at sequence 2.
#additionally, I tested the script and sent the results to test2.txt, and then I manually verified the results.


#6: this commit contains the calssification commands for transitions/transversions. the script from commit #5 above now will classify any mismatches 
#into transitions (A to G), (C-T), or transversions (A to T). the resulting output is the position of the mismatch, followed by the base at sequence1
#then the base at sequence 2, then the classification of the mismatch. I also created a file named testing_classification.txt and saved the output of the 
#script in its current state to it.
