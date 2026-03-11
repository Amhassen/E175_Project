
#Project objective: to compare two DNA sequecnes of equal lengh and report the differences between the two. sequences provided in the form of .fa files
#one sequence per file. statistics reported are: Mismatch position, mismatch type, sequence length, Ti/Tv ratio, and  percent identity.




#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#



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


#7: updated the final version of the script with Ti/Tv ratio and percent identity calculations. additionally, a summary page that displays once the 
#script is ran with the values from all the tasks that the script computed. I created another test final name final_testing.txt and this
#is the output of ./compare_seqs.sh data/seq1.fa data/seq2.fa at the final completed version of the script.



#8: added test.sh with multiple scenarios for fails, one edge case, and one normal case. 








#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#tutorial:
#this script requires to fasta sequences in two distinct files if there are multiple sequences per file, an error message will appear.
# the two files must have NO headers, or anything besides the DNA sequence.
#the script goes through the sequence base-by-base. so both sequences need to be of the same exact length, otherwise an error message will 
#display stating that sequences must be of the same length. 
#the sequences I used to test the script were 60Bp long, but it will work just fine for longer sequences, as long as the above conditions are met.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#ACKNOWLEDGEMENTS:
# Generative AI was used in debugging and defining scoring statements. additionally, AI was used in coming up with ideas for Error codes for the test.sh 
#script.


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#Dependencies:
#no dependencies required to run the bash script, assuming that the fasta file data is present within the same main directory as the script inside a 
#subdirectory named /data/

