=begin
----------------------------PROMPT----------------------------------
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

-----------------------------INPUT----------------------------------
Single integer

----------------------------OUTPUT----------------------------------
The input integer in its maximum rotation

-----------------------------RULES----------------------------------
Explicit:
  - Do not worry about leading zeroes

Implicit:

-------------------------DATA STRUCTURES----------------------------
Integer -> Array -> Integer

----------------------------ALGORITHM-------------------------------
1. Initialize variable for number
2. Run loop the number of digits of the input integer - 1
    - Give number and (counter + 1) to rotate_rightmost_method
    - Reassign number to return of method
3. Return number

=end

def rotate_rightmost_digits(num, n)
  num_arr = num.digits
  num_arr.prepend(num_arr.delete_at(n - 1)).reverse.join.to_i
end

def max_rotation(num)
  rotated = num
  num.to_s.size.downto(2) do |n|
    rotated = rotate_rightmost_digits(rotated, n)
    puts "n: #{n + 1}  |  #{rotated}"
  end
  rotated
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845