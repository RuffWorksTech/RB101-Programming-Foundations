=begin
----------------------------PROMPT----------------------------------
Write a method that rotates an array by moving the first element to the end of the array.

-----------------------------INPUT----------------------------------
Single-level array

----------------------------OUTPUT----------------------------------
The intput array, but the first element rotated to the end of the array

-----------------------------RULES----------------------------------
Explicit:
- Do not use the method Array#rotate or Array#rotate! for your implementation.
- The original array should not be modified.

Implicit:

-------------------------DATA STRUCTURES----------------------------
Array

----------------------------ALGORITHM-------------------------------
1. Duplicate input array
2. Remove first element, place it on the end of the array
3. Return
=end

def rotate_array(arr)
  rotated = arr.clone
  rotated << rotated.shift
end



p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true