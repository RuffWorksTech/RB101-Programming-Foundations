=begin
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.
=end

# Input:
# - Single positive integer

# Output:
# - An array of all integers in sequence between 1 and the argument

# ALGORITHM:
# - Generate array with a range from 1 to the given argument, returns

def sequence(num)
  num > 0 ? Array(1..num) : Array(num..1).reverse
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1)