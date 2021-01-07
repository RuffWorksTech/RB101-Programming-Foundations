### Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number. ###

# Input:
# - Single integer (positive or negative)

# Output:
# - If input number is positive, return the negative of that number
# - If input number is 0 or negative, return the original unchanged

# EXAMPLES:
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby

# ALGORITHM:
# - If input number is positive, return it negative
# - If input number is less than or equal to 0, return it

def negative(num)
  num > 0 ? -num : num
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby