=begin
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.
=end

# Input:
# - String with one or more space-separated words

# Output:
# - Hash that shows the number of words of different sizes

# Assumptions:
# - Punctuation is included in word count

# EXAMPLES:
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# DATA STRUCTURE:
# - String -> Array -> Hash

# ALGORITHM:
# - Split string into multiple words
# - Remap the array to replace each word with its word count
# - Organize word count and instances to a hash


def word_sizes(str)
  counts = Hash.new(0)
  str.split.each do |word|
    counts[word.length] += 1
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}