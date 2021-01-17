=begin
A collection of spelling blocks has two letters per block, as shown in this list:

Copy Code
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.
=end

# Input:
# - A single string containing a single word

# Output:
# - Boolean if the word can be spelled from the given set of blocks

# Rules:
# - Block:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# DATA STRUCTURES:
# - Nested array

# ALGORITHM:
# - Create contant nested array of spelling blocks
# - Initialize empty array to hold indices of pairs that are used
# - Split word into characters, iterate
#     - If character matches a block that has already been used, return false
#     - For each letter, check nested array
#     - If letter is found in nested array, record index of nested pair
# - If you made it this far, return true!

PAIRS = [['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['F','S'],['J','W'],['H','U'],['V','I'],['L','Y'],['Z','M']]


def block_word?(str)
  used_blocks = []
  str.chars.each do |char|
    PAIRS.each_with_index do |pair, idx|
      used_blocks << idx if pair.include?(char)
    end
  end
  return true if used_blocks == used_blocks.uniq
  false
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true