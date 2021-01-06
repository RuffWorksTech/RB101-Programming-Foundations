### Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number. ###

# Input:
# - A single array of integers

# Output:
# - Sum of the sums of each leading subsequence

# Rules:
# - Arrays will always contain at least one number

# EXAMPLES:
# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# ALGORITHM:
# - Initialize result array
# - Iterate through array
#     - For each index, create a sum of that element plus each element to the first
#     - Push that number into the result array
# - Return the sum of the result array


def sum_of_sums(arr)
  arr.each_index.with_object([]) { |idx, result| result << arr[0..idx].sum }.sum
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35