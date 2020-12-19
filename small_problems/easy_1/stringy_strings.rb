### Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.###

# Input:
# - One positive integer

# Output:
# - String of alternating 1s and 0s, always starting with 1.

# Rules:
# - Length of output string should be the same length as the given integer

# EXAMPLES:
# puts stringy(6) #== '101010'
# puts stringy(9) #== '101010101'
# puts stringy(4) #== '1010'
# puts stringy(7) #== '1010101'

# DATA STRUCTURES:
# - String. Nothing more complex than strings here.

# ALGORITHM:
# - Define a method that takes a single, positive integer as an argument
# - Create an array from 1-integer input
# - Map 1s and 0s to the array
#      - If element is odd, change it to a 1
#      - If element is even, change it to a 0
# - Return joined string

def stringy(int, first_num = 1)
  first_num == 0 ? second_num = 1 : second_num = 0

  arr = Array(1..int)
  arr.map! { |n| n.odd? ? first_num : second_num }
  arr.join
end

p stringy(6, 0) #= '101010'
p stringy(9) #== '101010101'
p stringy(4) #== '1010'
p stringy(7) #== '1010101'