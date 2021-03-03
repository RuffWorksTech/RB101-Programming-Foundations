=begin
In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

for reference: http://en.wikipedia.org/wiki/Typoglycemia


=end

# Input:
# - Single string

# Output:
# - The original string, but all internal alphabetical characters are sorted alphabetically

# Rules:
# - The input string can contain no characters, one word, or many words
# - First and last alphabetical characters remain in place
# - Special characters do not take the position of alphabetical characters
# - Special characters must remain in their positions.
# - Punctuation consists of 4 characters: hyphen(-), apostrophe('), comma(,), and period(.)
# - Capitalization is ignored

# DATA STRUCTURES:
# - String -> Arrays -> String

# ALGORITHM:
# - Define constant of special characters
# - Split string into words
# - Iterate through words
#     - Initialize new hash to hold first, last, and special characters
#     - Split each word into characters
#         - Save each special character and its index into the hash
#         - Remove special characters from word
#         - Sort word while leaving first and last characters alone
#         - Insert special characters into their respective positions saved in the hash

SPECIAL = %w(- ' , .)

def scramble_words(str)
  hsh = {}
  str.split.map do |word|
    hsh = {}
    word.chars.each_with_index do |char, idx|
      hsh[char] = idx if SPECIAL.include?(char)
    end
    word = word.chars.delete_if { |char| SPECIAL.include?(char) }.join
    word[1..-2] = word[1..-2].chars.sort.join
    hsh.each { |k, v| word.insert(v, k) }
    word
  end.join(' ')
end


p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."