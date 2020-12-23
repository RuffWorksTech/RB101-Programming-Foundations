### Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array. ###

# Input:
# - Array of integers

# Output:
# - Array with the same number of elements, but each element has the running total from the input array

# EXAMPLES:
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# DATA STRUCTURES:
# - Integer, Array

# ALGORITHM:
# - Initialize a total variable = 0
# - Map through array
#   - Add element to total
#   - Reassign total to element


def running_total(arr)
  total = 0
  arr.map { |num| total += num }
end

#rewritten using each_with_object
# def running_total(arr)
#   total = 0
#   arr.each_with_object([]) { |num, array| array << total += num }
# end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

