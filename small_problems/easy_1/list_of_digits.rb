### Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.###

# Input:
# - One positive integer

# Output:
# - Array of digits in the number

# EXAMPLES:
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# DATA STRUCTURE:
# - Array (use Integer#digits to split integer into array of digits)

# ALGORITHM:
# - Define method that takes in one argument, a positive integer
# - Split integer into its digits, organize into array
# - Return array of split digits


def digit_list(integer)
  integer.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]