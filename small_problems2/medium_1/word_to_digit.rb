=begin
----------------------------PROMPT----------------------------------
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

-----------------------------INPUT----------------------------------
Single string with multiple words

----------------------------OUTPUT----------------------------------
The original string, but all number words are replaced with their digit counterparts

-----------------------------RULES----------------------------------
Explicit:
  - Replacements are string representations of the digits

Implicit:
  - Punctuation is maintained

-------------------------DATA STRUCTURES----------------------------
String -> Array -> Hash -> String

----------------------------ALGORITHM-------------------------------
- Initialize constant hash of number words and their string counterparts
1. Split string into words
2. Iterate through constant hash
    - Replace instances of the number word in the string with their digit strings
3. Split string into array, iterate
=end

NUMBER_WORDS = %w(zero one two three four five six seven eight)

def is_integer?(n)
  n.to_i.to_s == n
end

def word_to_digit(str)
  NUMBER_WORDS.each do |word|
    str.gsub!(/\b#{word}\b/, NUMBER_WORDS.index(word).to_s)
  end
  digits = ''
  str.chars.each { |char| digits << char if is_integer?(char) }
  str.gsub!(/\d.*\d/, "(#{digits[0,3]}) #{digits[3,3]}-#{digits[6,4]}")
  str
end

p word_to_digit('Please call me at eight zero one five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'