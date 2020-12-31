### Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array. ###

# Input:
# - Single array

# Output:
# - A single array with nested arrays that contain the first half and second half of the original array

# Rules:
# - If the original array contains an odd number of elements, the middle element should be placed in the first half array
# - If the array is empty, it is still split into separate arrays

# EXAMPLES:
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# ALGORITHM:
# - Initialize two arrays, half1 and half2; half2 is equal to the given array
# - Determine size of array
# - Divide array size by 2, add remainder to result


def halvsies(arr)
  half1 = []
  half2 = arr
  half1_size = (arr.size / 2 + arr.size.remainder(2))
  half1_size.times { half1 << half2.shift }
  [half1, half2]
end



p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]