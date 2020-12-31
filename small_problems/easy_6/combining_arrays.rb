### Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays. ###

# Input:
# - Two arrays as arguments

# Output:
# - An array that contains all of the values from the argument arrays

# Rules:
# - All duplicates must be removed even if there are duplicates in the original arrays

# EXAMPLES:
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# ALGORITHM:
# - Initialize empty combined array
#   - Iterate through each element in array for both given arrays
#     - Shovel each element into the combined array
# - Return combined array with duplicates removed

def merge(arr1, arr2)
  merged = []
  arr1.each { |el| merged << el }
  arr2.each { |el| merged << el }
  merged.uniq
end

# OR

def merge2(arr1, arr2)
  arr1 | arr2
end

# OR

def merge3(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge2([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge3([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]