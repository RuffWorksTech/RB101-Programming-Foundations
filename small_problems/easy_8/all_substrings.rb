=begin
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:
=end


# Input:
# - Single string

# Output:
# - An array as a list of all substrings of a string

# Rules:
# - The order is such that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on.
# - The substrings at a given position should be returned in order from shortest to longest
# - Use the leading_substrings method from the previous exercise

# EXAMPLES:
# substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]


# ALGORITHM:
# - Initialize empty all_substrings array
# - Loop through string the same number of times as the string is longest
#     - Run the leading_substrings method from the previous exercise on each position, push into all_substrings array
# - Return all_substrings array

def leading_substrings(str)
  str.each_char.with_object([]) do |char, substrings|
    substrings << str[0..str.rindex(char)]
  end
end


def substrings(str)
  str.each_char.with_object([]) do |char, all_substrings|
    all_substrings << leading_substrings(str[str.index(char)..-1])
  end.flatten
end


p substrings('abcde') == [ 'a', 'ab', 'abc', 'abcd', 'abcde','b', 'bc', 'bcd', 'bcde', 'c', 'cd', 'cde', 'd', 'de', 'e' ]