### Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line. ###

# Input:
# - N/A

# Output:
# - Print all odd numbers 1 to 99 with each on a separate line

# ALGORITHM:
# - Initialize an integer at 1
# - Until 99, print integer if it is odd
# - Increase integer by 1
# - Print the array

num = 0

until num > 99
  puts num if num.odd?
  num += 1
end