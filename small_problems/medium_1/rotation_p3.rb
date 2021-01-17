=begin
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.
=end

# Input:
# - Single integer

# Output:
# - The input integer in its maximum rotation form

# Rules:
# - No not worry about multiple 0s
# - Leading zeros get dropped
# - Use the rotate_rightmost_digits from the previous exercise

# ALGORITHM:
# - Convert integer to array
# - Initialize a counter that is the array size
# - Initialize an empty array
# - Loop through array while counter > 1
#     - Pass in the number and the counter into the rotate_rightmost_digits array
#     - Append the first element to the empty array
#     - Decrease counter -=1


def rotate_array(arr)
  rotated = arr.clone
  rotated.insert(-1, rotated.shift)
end

def rotate_rightmost_digits(num, n)
  arr = num.digits.reverse
  (arr << rotate_array(arr.pop(n))).flatten
end

def max_rotation(num)
  num_of_digits = num.digits.size
  result = num.digits.reverse
  num_of_digits.downto(1) do |n|
    nums_to_rotate = result.pop(n).join.to_i
    result << rotate_rightmost_digits(nums_to_rotate, n)
  end
  result.flatten.join.to_i
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845