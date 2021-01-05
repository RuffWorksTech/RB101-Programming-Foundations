=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.
=end

# Input:
# - Two arrays of integers as arguments

# Output:
# - New array that contains the product of every pair of numbers that can be formed between the elements of the two arrays, sorted.

# Rules:
# - Sort must be by increasing value

# EXAMPLES:
# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# ALGORITHM:
# - Initialize an empty result array
# - Iterate through first array
#     - Iterate through second array
#         - Multiply the element of the first array by the element of the second array, shovel into result array
# - Sort the result array, return

def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each do |num1|
    arr2.each { |num2| result << num1 * num2 }
  end
  result.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]