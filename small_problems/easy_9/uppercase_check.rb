### Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored. ###

# Input:
# - Single string

# Output:
# - A boolean value

# Rules:
# - If all alphabetic characters are uppercase, return true
# - If not, return false

# EXAMPLES:
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

# ALGORITHM:
# - Iterate through string
# - Check if each character is an uppercase alphabetic
# - If one character returns false, return false


def uppercase?(str)
  letters = str.chars.keep_if { |char| char.match?(/[[:alpha:]]/) }
  !letters.any? { |char| char == char.downcase }
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true