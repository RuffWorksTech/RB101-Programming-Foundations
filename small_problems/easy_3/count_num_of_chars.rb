### Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character. ###

# Input:
# - String of one or more words via user input

# Output:
# - Print number of characters

# Rules:
# - Omit spaces in the total count

# EXAMPLES:
# Please write word or multiple words: walk
# There are 4 characters in "walk".

# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

# DATA STRUCTURES:
# - String -> Array

# ALGORITHM:
# - Initialize empty array
# - Prompt for string of one or more words
# - Convert string into an array, omit spaces
#     - 
# - Return total count of array elements


print "=> Please enter a word or multiple words: "
input = gets.chomp

chars = []
input.chars { |char| chars << char if char != ' ' }

puts "=> There are #{chars.size} characters in \"#{input}\"."