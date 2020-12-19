### Write a method that takes one argument, a positive integer, and returns the sum of its digits. ###

# Input:
# - Single, positive integer

# Output:
# - Sum of its digits

# EXAMPLES:
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# ALGORITHM:
# - Define method that takes a single integer as an argument
# - Split the integer into an array
# - Sum the array
# - Return the result


def sum_of_digits(int)
  int.digits.sum
end

p sum(23) == 5
p sum(496) == 19
p sum(123_456_789) == 45
