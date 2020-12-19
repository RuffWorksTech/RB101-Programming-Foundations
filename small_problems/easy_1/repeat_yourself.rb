# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Input:
# - 1 string, 1 integer

# Output:
# - printed string as many times as the inputted integer indicates

# EXAMPLES:
# repeat('Hello', 3)  # => Hello
#                     # => Hello
#                     # => Hello

# DATA STRUCTURE:
# - Choices: iterator loop, times loop
#   - .times loop because it will loop for the #.times given

# ALGORITHM:
# - Create method that takes in two arguments
#   - One string, one integer
#   - .times function, put integer in function, puts strings in block
  
def repeat(string, integer)
  integer.times { puts string }
end

repeat('Hello', 3)