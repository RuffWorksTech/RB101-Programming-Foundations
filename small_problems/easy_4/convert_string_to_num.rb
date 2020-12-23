=begin
The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.
=end

# Input:
# - Single numeric string

# Output:
# - Given string as an Integer object

# Rules:
# - Cannot use .to_i or Integer().
# - Don't worry about + or - signs
# - No standard conversion methods

# DATA STRUCTURES:
# - String -> Array -> Integer

# ALGORITHM:
# - Initialize constant hash with numeric strings as keys and matching integers as values
# - Convert string to array
# - Map through string array
#   - Reassign string to integer value
# - Create the integer from scratch


NUMERIC_CHARS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

def string_to_integer(string)
  int_array = string.chars.map { |char| NUMERIC_CHARS[char] }
  result = 0
  int_array.inject { |int, i| result = int*10 + i}
  result
end

p string_to_integer('4321') #= 4321
p string_to_integer('570') #== 570