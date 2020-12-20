### Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line. ###

# Input:
# - N/A

# Output:
# - Print all even numbers 1 to 99 with each on a separate line

# ALGORITHM:
# - Initialize an integer at 1
# - Until 99, print integer if it is even
# - Increase integer by 1
# - Print the array

num = 1

until num > 99
  puts num if num.even?
  num += 1
end