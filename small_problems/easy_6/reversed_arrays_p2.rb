=begin
Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.
=end

# Input:
# - Array of elements

# Output:
# - New array of the original array argument with its elements in reverse order

# Rules:
# - Cannot use .reverse or .reverse!
# - Do not mutate the caller

# EXAMPLES:
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# ALGORITHM:
# - Initialize empty array reversed
# - Iterate through array
#     - Take each element of the given array, add it to the beginning of the reversed array
# - Return the reversed array

def reversed(arr)
  arr.each_with_object([]) { |el, reversed| reversed.prepend(el) }
end


list = [1,2,3,4]
p list
result = reversed(list)   
p result
p list.object_id != result.object_id

list2 = %w(a b e d c)
p list2
result2 = reversed(list2)   
p result2
p list2.object_id != result2.object_id