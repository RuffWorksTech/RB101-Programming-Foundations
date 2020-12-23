### Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths. ###


# Input:
# - Two strings as arguments

# Output:
# - Short, long, short strings concatenated together

# Rules:
# - Strings will be of different lengths

# EXAMPLES:
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# ALGORITHM:
# - Define a method that takes two strings as arguments
# - Compare the length
# - Concatenante the strings to be short-long-short
# - Return the combined string

def concat_strings(short, long)
  short + long + short
end

def short_long_short(str1, str2)
  case str1.length <=> str2.length
  when -1 then concat_strings(str1, str2)
  when 1 then concat_strings(str2, str1)
  end
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"