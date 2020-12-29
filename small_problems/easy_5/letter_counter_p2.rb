### Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4. ##

# Input:
# - Single string with one or more space-separated word

# Output:
# - Hash with keys representing alphabetic letter count, values representing the number of words with that size

# Rules:
# - Non-alphabetic characters will not count towards the total

# EXAMPLES:
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

# DATA STRUCTURES:
# - String -> Array -> Hash

# ALGORITHM:
# - Within existing .each iteration
# - Check each word if each character is alphabetic.
#     - Split string into array
#     - If character is not alphabetic, remove it.
# - Check each element, remove non-alphabetic characters
# - Organize word counts and instance counts into hash


def word_sizes(str)
  counts = Hash.new(0)
  str.split.map do |word|
    word = word.downcase.chars.keep_if { |char| ('a'..'z').include?(char) }.join
    counts[word.length] += 1
  end
  counts.to_a.sort.to_h
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}