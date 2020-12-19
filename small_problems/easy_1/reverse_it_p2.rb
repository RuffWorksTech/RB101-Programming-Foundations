### Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.###

# Input:
# - Single string containing one or more words

# Output:
# - Single string, words that contain 5 or more characters reversed

# Rules:
# - Strings will consist of only letters and spaces
# - Spaces should be included ONLY when more than one word is present

# EXAMPLES:
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# DATA STRUCTURES:
# - Array, can put each word into an element and check it

# ALGORITHM:
# - Define method that takes one string as an argument
# - Initialize empty array
# - Split string into array
# - Iterate through array, check if substring length >= 5
#     - If substring length >= 5, reverse it, overwrite element
# - Join array back together with spaces as delimiters
# - Return reversed array

def reverse_words(string)
  words = string.split.each do |word|
    words = word.reverse! if word.length >= 5
  end
  words.join(' ')
end


p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS