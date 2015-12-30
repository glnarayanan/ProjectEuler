# Problem Statement

# This problem is a programming version of Problem 13 from projecteuler.net

# Work out the first ten digits of the sum of N 50-digit numbers.

# Input Format
# First line contains N, next N lines contain a 50 digit number each.

# Output Format
# Print only first 10 digit of the final sum

# Constraints
# 1≤N≤103

# Sample Input

# 5
# 37107287533902102798797998220837590246510135740250
# 46376937677490009712648124896970078050417018260538
# 74324986199524741059474233309513058123726617309629
# 91942213363574161572522430563301811072406154908250
# 23067588207539346171171980310421047513778063246676
# Sample Output

# 2728190129

inputs = STDIN.readline().chomp.to_i
val = 0
loop do
  n = STDIN.readline().to_i
  val = val + n
  inputs = inputs - 1
  break if inputs == 0
end
array = val.to_s.split('')
print "#{array[0..9].join('').to_i}"
