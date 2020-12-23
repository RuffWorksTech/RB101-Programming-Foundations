=begin
In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.
=end

# Input:
# - Single positive or negative integer

# Output:
# - String representation of given integer (with sign)

# Rules:
# - Cannot use .to_s, String(), .format, etc.
# - Can use previous method

# EXAMPLES:
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# ALGORITHM:
# - Run integer_to_string method (modify to remove negative sign)
# - Before returning, run new method add_sign(int)
# - If original integer < 0, prepend - to string
# - Else if original integer > 0, prepend + to string


def integer_to_string(int)
  int.digits.reverse.join
end

def signed_integer_to_string(num)
  case num <=> 0
  when -1 then "-#{integer_to_string(num.abs)}"
  when 1 then "+#{integer_to_string(num)}"
  else          integer_to_string(num)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'


#My original solution
# def add_sign(int, str)
#   if int > 0
#     str.prepend('+')
#   elsif int < 0
#     str.prepend('-')
#   else
#     str
#   end
# end


# def integer_to_string(int)
#   str = int.abs.digits.reverse.join
#   add_sign(int, str)
# end