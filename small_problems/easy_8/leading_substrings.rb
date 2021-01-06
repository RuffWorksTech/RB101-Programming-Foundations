### Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring. ###

# Input:
# - Single string

# Output:
# - Array of all substrings that start at the beginning of the original string

# Rules:
# - Order should be shortest to longest substring

# EXAMPLES:
# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# DATA STRUCTURES:
# - String -> Array

# ALGORITHM:
# - Initialize empty substrings array
# - Iterate through each character of the array
#     - Take the first element and push it into the array
#     - Take the range of the first character to the existing character and push it as an element into the array
# Return array

def leading_substrings(str)
  str.each_char.with_object([]) { |char, substrings| substrings << str[0..str.rindex(char)] }
end



p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']