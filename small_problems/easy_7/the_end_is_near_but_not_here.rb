=begin
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.
=end

# Input:
# - Single string

# Output:
# - The next to last word in the string

# Rules:
# - Word is any sequence of non-blank characters
# - Input string will always contain at least two words

# EXAMPLES:
# penultimate('last word') == 'last'
# penultimate('Launch School is great!') == 'is'

# DATA STRUCTURES:
# - String -> Array -> String

# ALGORITHM:
# - Split string into array
# - Return the second to last element

def penultimate(str)
  str.split[-2]
end



p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'