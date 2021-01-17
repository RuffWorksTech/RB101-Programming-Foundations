### Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits. ###

# Input:
# - A single string

# Output:
# - The original string modified with any sequence of number words converted into digits

# Rules:
# - Nothing at this point

# DATA STRUCTURES:
# - HASH of number/word pairs
# - String > Array > String

# ALGORITHM:
# - Inialize number/word pair hash CONSTANT
# - Split string into array
# - Map through array
#     - Check element if it is a key in the number/word hash, if so, change the element to the number value
# - Join array, return

NUMBER_WORDS = {  'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 
                  'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 }

def word_to_digit(str)
  NUMBER_WORDS.keys.each do |word|
    str.gsub!(/\b#{word}\b/, NUMBER_WORDS[word].to_s)
  end
  str
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'