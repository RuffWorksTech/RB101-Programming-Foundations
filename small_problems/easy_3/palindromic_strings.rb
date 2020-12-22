### Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces. ###

# Input:
# - String

# Output:
# - True if the string argument is a palindrome, false if otherwise

# Rules:
# - Case, spaces, and punctuation matters

# EXAMPLES:
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# ALGORITHM:
# - Compare string argument against string argument reversed

def string_palindrome?(string)
  string == string.reverse
end

def arr_palindrome?(arr)
  arr == arr.reverse
end

p string_palindrome?('madam') == true
p string_palindrome?('Madam') == false          # (case matters)
p string_palindrome?("madam i'm adam") == false # (all characters matter)
p string_palindrome?('356653') == true
p arr_palindrome?([1, 2, 3, 2, 1]) == true