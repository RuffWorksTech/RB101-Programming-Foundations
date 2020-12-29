### Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces). ###

# Input:
# - Single string of some words and an assortment of non-alphabetic characters

# Output:
# - Original string with all non-alphabetic characters replaced by spaces

# Assumptions:
# - String will be all lowercased

# Rules:
# - The returned string cannot have consecutive spaces

# EXAMPLES:
# cleanup("---what's my +*& line?") == ' what s my line '

# DATA STRUCTURES:
# - String, Array

# ALGORITHM:
# - CONSTANT alphabetic characters
# - Convert string to array for iteration
# - Iterate through string
#     - if a character is not alphabetic, replace it with a space
# - If there is a group of more than one space, replace it with a single space

LETTERS = Array('a'..'z')

def cleanup(str)
  str.chars.map do |char|
    !LETTERS.include?(char) ? ' ' : char
  end.join.squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '