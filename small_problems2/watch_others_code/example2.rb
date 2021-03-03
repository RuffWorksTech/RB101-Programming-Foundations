=begin
----------------------------PROMPT----------------------------------
Given an array of strings made only from lowercase letters, return an array
of all characters that show up in all strings within the given array (including
duplicates). 

-----------------------------INPUT----------------------------------
- Array of strings

----------------------------OUTPUT----------------------------------
- Array of all characters that are common between the strings in the input array

-----------------------------RULES----------------------------------
Explicit:
- All characters will be lower case
- Include duplicates

Implicit:

-------------------------DATA STRUCTURES----------------------------
Arrays

----------------------------ALGORITHM-------------------------------
- Initialize buffer array of the first word's characters
- Initialize empty common array
- Iterate through the buffer
    - If a character is already in the buffer, then find two instances of each character in each word
    - If a character is in every single word in the input array
      - Push it into the common array
      - Delete an instance of that character from each word
- Return common array
=end

def common_chars(arr)
  copy = arr.map(&:clone)

  buffer = copy.shift.chars

  buffer.select do |char|
    copy.all? { |word| word.sub!(char,'') }
  end
end

p common_chars(['bella', 'label', 'roller']) #== ['e', 'l', 'l']
p common_chars(['cool', 'locl', 'cook']) #== ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) #== ['o']
p common_chars(['aabbaaaaa', 'ccddddddd', 'eeffee', 'ggrrrrrr', 'yyyzzz']) #== []