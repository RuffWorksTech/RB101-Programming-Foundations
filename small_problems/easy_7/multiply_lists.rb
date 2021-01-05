### Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements. ###

# Input:
# - Two arrays of integers as arguments

# Output:
# - Array that contains the product of each pair of numbers from the arguments that have the same index

# Rules:
# - The argument arrays will contain the same number of elements

# EXAMPLE:
# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# ALGORITHM:
# - Map through first array with an array object
#   - Multiply the first array element index by the second array element index
# - Return array

def multiply_list(arr1, arr2)
  result = []
  arr1.each_with_index { |num, idx| result << num * arr2[idx] }
  result
end


p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]