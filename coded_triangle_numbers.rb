##Note: This solution times out after the first 2 test cases out of a total 7 test cases. Needs optimization or a different approach

# Problem Statement

# This problem is a programming version of Problem 42 from projecteuler.net

# The nth term of a sequence of triangle numbers is given by,
# tn=12n(n+1)

# so the first ten triangle numbers are:
# 1,3,6,10,15,21,28,36,45,55,⋯
# You are given an integer. If it is a triangular number tn, print the term n corresponding to this number, else print −1

# Input Format
# First line of input contains an integer T denoting the number of testcases. Each of the next T lines contains an integer.

# Output Format
# Print the answer corresponding to each test case in a new line.

# Constraints
# 1≤T≤105
# 1≤tn≤1018
# Sample Input #00:

# 3
# 2
# 3
# 55
# Sample Output #00:

# -1
# 2
# 10
def find_triangle_term(number)
  flag = 0
  (1..number).each do |num|
    if number == (0.5 * num * (num + 1)).to_i
      flag = num
    else
      flag = 0
    end
    break if flag > 0
  end
  (flag == 0)? -1:flag
end


test_cases = STDIN.readline().chomp.to_i
loop do
  triangle_number = STDIN.readline().to_i
  puts "#{find_triangle_term(triangle_number)}"
  test_cases = test_cases - 1
  break if test_cases == 0
end
