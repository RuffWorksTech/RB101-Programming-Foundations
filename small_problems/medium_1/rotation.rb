=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.
=end

# Input:
# - A single array

# Output
# - The original arraywith the first element moved to the end

# Rules:
# - Cannot use .rotate or .rotate!
# - Array must be unmodified

# EXAMPLES:
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true


# ALGORITHM:
# - Initialize new array = input array
# - Insert first element into the last spot in the array


def rotate_array(arr)
  rotated = arr.clone
  rotated.insert(-1, rotated.shift)
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

s = 'abcde'
p rotate_string(s) == 'bcdea'
p s == 'abcde'

i = 12345
p rotate_integer(i) == 23451
p i == 12345