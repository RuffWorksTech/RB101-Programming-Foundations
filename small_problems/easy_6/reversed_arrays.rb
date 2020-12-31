# =begin
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.
# =end

# Input:
# - An array of elements

# Output:
# - The original array mutated with all elements reversed

# Rules:
# - Cannot use .reverse or .reverse!
# - Returned array must have the same object_id

# EXAMPLES:
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1] # true
# list == [4, 3, 2, 1] # true
# list.object_id == result.object_id # true

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"] # true
# list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# reverse!(list) == ["abc"] # true
# list == ["abc"] # true

# list = []
# reverse!(list) == [] # true
# list == [] # true

# DATA STRUCTURES:
# - Array

# ALGORITHM:
# - Initialize a counter = 0
# - Iterate through array
#     - Take the last element of the array, insert it to the index of the counter
#     - Iterate the counter += 1
# - Return mutated array

def reversed_arr(arr)
  arr.each_with_index { |el, idx| arr.insert(idx, arr.pop) }
end


list = [1, 2, 3, 4]
p list
result = reversed_arr(list) #== [4, 3, 2, 1]
p result
p list.object_id == result.object_id

list2 = %w(a b e d c)
p list2
result2 = reversed_arr(list2) #== ["c", "d", "e", "b", "a"]
p result2
p list2.object_id == result2.object_id

list3 = ['abc']
p list3
result3 = reversed_arr(list3) #== ['abc']
p result3
p list3.object_id == result3.object_id

list4 = []
p list4
result4 = reversed_arr(list4) #== []
p result4
p list4.object_id == result4.object_id