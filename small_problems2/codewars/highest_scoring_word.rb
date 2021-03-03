=begin
----------------------------PROMPT----------------------------------
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

-----------------------------INPUT----------------------------------
Single string with multiple words

----------------------------OUTPUT----------------------------------
The word with the highest score

-----------------------------RULES----------------------------------
Explicit:
- All inputs will be lowercase and valid. If two words score the same, return the word that appears first in the input string

Implicit:

-------------------------DATA STRUCTURES----------------------------


----------------------------ALGORITHM-------------------------------
Initialize constant array that includes all alphabetic lowercase characters
Define method that calculates the score of word
  - Initialize integer variable total
  - Split word into characters iterate through characters
    - Add the index + 1 of the letter in the constant array to the total
  - Return total

Define highest method
  - Initialize string variable highest
  - Split string into words, iterate through words
    - Create new array that is the score for each word
=end

LETTERS = Array('a'..'z')

def score(word)
  total = 0
  word.each_char do |char|
    total += (LETTERS.find_index(char) + 1)
  end
  total
end

def high(str)
  scores = str.split.map do |word|
    score(word)
  end
  str.split[scores.find_index(scores.max)]
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'