=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces
=end

# Input:
# - Single string with one or more words separated by spaces

# Output:
# - The given string, the first a last letter of every word are swapped

# Assumptions:
# - Every word contains at least one letter
# - Given string contains at least one word
# - Given string contains nothing but words and spaces

# EXAMPLES:
# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# DATA STRUCTURES:
# - String -> Array -> String

# ALGORITHM:
# - Split string into individual words
# - Place first letter into container
# - Place last letter into container
# - Make last letter first
# - Make first letter last


def swap(str)
  str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'