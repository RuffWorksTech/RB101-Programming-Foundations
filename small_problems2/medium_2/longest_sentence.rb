# Prompt:
# - Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

# Input:
# - The content of a text file

# Output:
# - Print out of the longest sentence in the file based on the number of words and the number of words in the sentence

# RULES

# Explicit:
# - Sentences may end with periods (.), exclamation points (!), or question marks (?).
# - Everything that is not a space or a sentence-ending character is a word.

# DATA STRUCTURES:
# - String -> Array

# ALGORITHM:
# - Initialize emtpy variable longest = 0
# - Read input file
# - Split content into sentences
# - Count the number of words in each sentence
# - Print out the longest sentence and its word count


def longest_sentence(file)
  length = 0
  longest = ''

  File.read(file).split(/(\.|\!|\?)/).each do |sentence|
    if sentence.split.size > length
      length = sentence.split.size
      longest = sentence.gsub(/\n/,' ')
    end
  end
  puts longest << '.'
  puts length
end

longest_sentence("text.txt")
longest_sentence("gutenberg.txt")