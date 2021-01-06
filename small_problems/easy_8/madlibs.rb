=begin
Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.
=end

# Input:
# - 4 input strings from the user
#   - Noun
#   - Verb
#   - Adjective
#   - Adverb

# Output:
# - A single string "story" with the user's inputs interpolated into the storoy

# EXAMPLE:
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# ALGORITHM:
# - Prompt user for noun, verb, adjective, adverb
# - Print madlib with inputs interpolated into the string

print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adj = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

puts "Do you #{verb} your #{adj} #{noun} #{adverb}? That's hilarious!"