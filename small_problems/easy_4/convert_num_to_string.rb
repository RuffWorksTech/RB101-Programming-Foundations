=begin
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.
=end

# Input:
# - Single, positive integer

# Output:
# - String representation of the given integer

# Rules:
# - Cannot use .to_s, String(), .format, etc.

# EXAMPLES:
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# ALGORITHM:
# - Initialize constant hash with strings as keys, numbers as values
# - Define method that takes a single integer as an argument
# - Convert integer to array
# - Iterate
#     - For each element, find the matching key/value pair in the hash
#     - For each match (select), add to string array
# - Return joined string array


NUMERIC_CHARS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

def integer_to_string(int)
  int.digits.reverse.select.with_object([]) do |num, str_arr|
    str_arr << NUMERIC_CHARS.key(num)
  end.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

def integer_to_string(int)
  int.digits.reverse.join
end