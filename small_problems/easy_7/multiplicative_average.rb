### Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty. ###

# Input:
# - Single array of integers

# Output:
# - Printout of the result of multiplying all numbers together and then dividing the result by the number of elements in the array

# Rules:
# - Returned value will be a float rounded to 3 decimal places
# - Array will be non-empty

# EXAMPLES:
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# ALGORITHM:
# - Initialize result = 1.0
# - Iterate through array
#     - Multiple the result by each element
# - Return result rounded to 3 decimal places

def show_multiplicative_average(arr)
  result = 1.0
  arr.each { |num| result *= num }
  result /= arr.size
  puts "The result is #{format('%.3f', result)}"
end


show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])