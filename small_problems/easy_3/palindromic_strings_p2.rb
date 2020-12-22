### Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise. ###

# Input:
# - String

# Output:
# - True if the string argument is a palindrome, false if otherwise

# Rules:
# - case-insensitive, ignore all non-alphanumeric characters

# EXAMPLES:
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# ALGORITHM:
# - Define method that takes a string as an argument
# - Initialize empty array
# - Iterate through argument string, convert string to array and remove all non-alphanumeric characters (downcase all characters)
# - Compare array to original argument
# - Return false or true

ALPHANUMERIC_CHARS = [Array('a'..'z'),Array('0'..'9')].flatten

def arr_palindrome?(arr)
  arr == arr.reverse
end

def real_palindrome?(string)
  purged_arr = []
  string.chars.select do |char|
    purged_arr << char.downcase if ALPHANUMERIC_CHARS.include?(char.downcase)
  end
  arr_palindrome?(purged_arr)
end


p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false