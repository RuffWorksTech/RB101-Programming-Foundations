=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
=end

# Input:
# - Array of Integers between 0 and 19

# Output:
# - The original array sorted based on the English word for each number

# Rules:
# - The given array will be integers only, the output array will be integers only

# EXAMPLES:
# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# DATA STRUCTURES:
# - Array -> Hash -> Array

# ALGORITHM:
# - CONSTANT hash of English words and their integers
# - Check each element against the english/integer hash, replace Integer with English word
# - Sort array
# - Check each element against the english/integer hash, replace English word with Integer


NUMBER_WORDS = {
  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
  8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
  14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}

def alphabetic_number_sort(arr)
  words_sorted = arr.map { |num| NUMBER_WORDS.fetch(num) }.sort
  words_sorted.map { |word| NUMBER_WORDS.invert.fetch(word) }
end

p alphabetic_number_sort((0..19).to_a) == [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0 ]