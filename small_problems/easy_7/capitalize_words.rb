=begin
Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.
=end

# Input:
# - Single string of all lowercase words

# Output:
# - New string with the first character of every word capitalized

# Rules:
# - Words are sequences of non-blank characters

# EXAMPLES:
# word_cap('four score and seven') == 'Four Score And Seven'
# word_cap('the javaScript language') == 'The Javascript Language'
# word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# DATA STRUCTURES:
# - String -> Array -> String

# ALGORITHM:
# - Split string into words
# - Iterate through array
#     - Capitalize each word
# - Join back together, return

def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'