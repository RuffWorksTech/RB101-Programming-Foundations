# Prompt:
# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Input:
# - Single string with one word

# Output:
# - Boolean, true if the word passed in can be spelled from the set of blocks, false otherwise

# RULES
# Explicit:
# - Each word block can only be used once

# Implicit:
# - Input words can be either uppercase or lowercase

# DATA STRUCTURES:
# String -> Array

# ALGORITHM:
# - Create array of character blocks
# - Split string into characters
#     - If character is in a character block, remove the block

BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'],
          ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(str)
  matches = []
  str.upcase.chars.each do |char|
    matches << (BLOCKS.select { |block| block.include?(char) })
  end
  matches == matches.uniq
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true