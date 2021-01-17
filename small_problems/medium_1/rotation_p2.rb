=begin
Write a method that can rotate the last n digits of a number.

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end

# Input:
# - Two integers as arguments
#     - The first as the number to be rotated
#     - The second as the n digits at the end of the integer to rotate

# Output:
# - The first integer with the n last digits (given as the second integer) rotated

# Rules:
# - You should use the rotate_array method from the previous exercise
# - n will always be positive

# ALGORITHM:
# - Split integer into ordered array, save into variable
# - Slice out n digits from the array permanently
# - Run the rotate_array method on the slice
# - Append the rotated array back onto the original
# - Join, convert to integer, return

def rotate_array(arr)
  rotated = arr.clone
  rotated.insert(-1, rotated.shift)
end


def rotate_rightmost_digits(num, n)
  arr = num.digits.reverse
  (arr << rotate_array(arr.pop(n))).flatten.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917