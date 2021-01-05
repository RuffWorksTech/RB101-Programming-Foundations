=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.
=end

# Input:
# - Two arrays as arguments

# Output:
# - A new array that contains all elements from both arrays in alternating order

# Assumptions:
# - Both arrays are non-empty and have the same number of elements

# EXAMPLE:
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# ALGORITHM:
# - Initialize index counter = 0
# - Initialize empty combined_array
# - Loop number of times that is equal to first array size
#     - Shovel array[index] from both arrays into the empty array
#     - Increment idx counter
# - Return combined_array


def interleave(arr1, arr2)
  idx = 0
  combined = []
  arr1.size.times do
    combined << arr1[idx] << arr2[idx]
    idx += 1
  end
  combined
end


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']