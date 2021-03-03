=begin
Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby.
=end

# Input:
# - Single string

# Output:
# - Hash including key/value pairs, each key representing a letter in the input string and its value as the number of instances in the string

# Rules:
# - Input string will only have one word
# - Hash keys are alphabetized
# - All keys are symbols of their respective characters

# DATA STRUCTURES:
# - String -> Array -> Hash

# ALGORITHM:
# - Initialize empty hash for letter counts
# - Alphabetize the string
# - Split string into array
# - Iterate through array
#     - If a letter is not already in the hash, push the letter into the hash as a symbol and its count in the array as its value
# - Return hash

def letter_count(str)
  count_hsh = {}
  str.chars.sort.each do |char|
    count_hsh[char.to_sym] = str.chars.count(char) if !count_hsh.keys.include?(char.to_sym)
  end
  count_hsh
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}