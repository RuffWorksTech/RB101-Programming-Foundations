### Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence. ####

# Input:
# - A very, very long string.

# Output
# - The longest sentence in that string and the number of words in that sentence

# Rules:
# - Sentences may end with periods (.), exclamation points (!), or questions marks (?).
# - Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.

# ALGORITHM:
# - Split text into sentences using periods, exclamation points, and question marks.
#     - Split sentences into arrays of words and return the sizes

SENTENCE_DELIMITERS = %w(. ! ?)


def longest_sentence(file)
  longest = 0
  
  File.read(file).split(/\.|\?|!/).each do |sentence|
    longest = sentence.split.size if sentence.split.size > longest
  end
  longest
end

puts longest_sentence("long_text.txt")
puts longest_sentence("gutenburg_file.txt")