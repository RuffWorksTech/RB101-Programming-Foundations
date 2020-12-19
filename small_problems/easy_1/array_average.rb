### Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

# Input:
# - Array of integers as one argument

# Output:
# - Single integer that is the average of all numbers in the array

# Rules:
# - Array will never be empty
# - Numbers will always be positive

# EXAMPLES:
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# ALGORITHM:
# - Define method that takes a single array as an argument
# - Sum the array
# - Divide the sum by the number of elements in the array
# - Return the result

def average(arr)
  (arr.sum.to_f / arr.size).round(2)
end

puts average([1, 6]) #== 3 
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40