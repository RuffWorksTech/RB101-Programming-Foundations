=begin
----------------------------PROMPT----------------------------------
Write a method that can rotate the last n digits of a number.

-----------------------------INPUT----------------------------------
Two integers as arguments
  1. Integer to be rotated
  2. Number of places to rotate

----------------------------OUTPUT----------------------------------
The first integer argument rotated

-----------------------------RULES----------------------------------
Explicit:
  - n (second argument) will always be a positive integer

Implicit:
  - The rest of the number maintains its original order

-------------------------DATA STRUCTURES----------------------------
Integer -> Array

----------------------------ALGORITHM-------------------------------
1. Split first integer argument into an array
2. Remove the element at the n index and place it onto the end of the array
3. Join array together and return as an integer

=end

def rotate_rightmost_digits(num, n)
  num_arr = num.digits
  num_arr.prepend(num_arr.delete_at(n - 1)).reverse.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917