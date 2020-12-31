### Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed. ###

# Input:
# - Array of Strings

# Output:
# - The original Array of String values but with vowels removed

# Rules:
# - Vowels can be uppercase or lower case

# EXAMPLES:
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# DATA STRUCTURES:
# - Array

# ALGORITHM:
# - Initialize CONSTANT of vowels
# - Map through array elements
#       - Iterate through characters
#       - Check each character. If it is a vowel in the CONSTANT, remove it
#       - Return the word
# - Return original array


VOWELS = %w(a e i o u)

def remove_vowels(arr)
  arr.map do |word|
    word.chars.each_with_object('') do |char, clean_word|
    clean_word << char if !VOWELS.include?(char.downcase)
    end
  end
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']