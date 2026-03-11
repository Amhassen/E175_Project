#1/usr/bin/env bash
#tests for compare_seqs.sh


pass_count=0
fail_count=0

run_test() {
test_name="$1"
expected="$2"
shift 2
output=$("$@" 2>&1)

if echo "$output" | grep -q "$expected"; then
echo "PASS: $test_name"
((pass_count++))
fi
}

#fake data for testing:

mkdir -p test_data

#a normal case, 1 Ti, 1 Tv:
cat > ~/programming_project/test_data/normal1.fa << 'EOF'
>seq1
ATGCAATT
EOF
cat > ~/programming_project/test_data/normal2.fa << 'EOF'
>seq2
ATTTAATT
EOF

#edge case: identical sequences

cat > ~/programming_project/test_data/identical1.fa << 'EOF'
>seq1
AACCGGTT
EOF
cat > ~/programming_project/test_data/identical2.fa << 'EOF'
>seq2
AACCGGTT
EOF

#error case: sequences of different length

cat > ~/programming_project/test_data/short.fa << 'EOF'
>seq1
ATGC
EOF
cat > ~/programming_project/test_data/long.fa << 'EOF'
>seq2
ATGCGGACC
EOF

#another error case: multiple fasta sequences in one file

cat > ~/programming_project/test_data/multi.fa << 'EOF'
>seq1
ATGC
>seq2
TTAA
EOF


#~~~~~~~~~~~~~~~~~~~~~~~~~~#
#to run the tests:
#normal input test:
run_test "normal input reports mismatches" "summary:" ./compare_seqs.sh test_data/normal1.fa test_data/normal2.fa

#edge case test: identical sequences
run_test "identical sequences give 100 percent identity" "percent identity 100.00%" ./compare_seqs.sh test_data/identical1.fa test_data/identical2.fa

#error case: missing file

run_test "no arguments gives error " "does not exist" ./compare_seqs.fa test_data/normal1.fa fakedata.fa

#error case: no arguments
run_test "no arguments givesusage error" "Usage:" ./comapare_seq.sh

#error case: incorrect number of arguments
run_test "wrong number of arguments gives usage error" "Usage:" ./compare_seqs.sh test_data/normal1.fa

#error case:  multiple fasta inputs
run_test "multiple FASTA sequences give error" "Exactly one FASTA sequence" ./compare_seqs.sh test_data/multi.fa test_data/normal2.fa

#error case: different sequence lengths
run_test "different lengths give error" "same length" ./compare_seqs.sh test_data/short.fa test_data/long.fa


#~~~~~~~~~~~~
#summary
#~~~~~~~~~~~~
echo 
echo "Tests passed: $pass_count"
echo "Tests failed: $fail_count"
if [ "$fail_count" -eq 0 ]; then
echo "All tests passed."
exit 0
else
echo "Some tests failed."
exit 1
fi

