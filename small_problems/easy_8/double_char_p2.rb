### Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled. ###

# Input:
# - Single string of one or more words

# Output:
# - New string in which every consonant character is doubled

# Rules:
# - Vowels, digits, punctuation, and whitespace is not doubled
# - Case-insensitive

# EXAMPLES:
# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

# ALGORITHM:
# - Create lowercase alphabetic array to check against
# - Remove vowels
# - Initialize CONSONANTS
# - Split string into characters
# - Map through characters
#     - If a character is in the CONSONANTS collection, multiply it by 2, else leave it alone
# - Join string back together

CONSONANTS = Array('a'..'z').reject! { |x| x =~ /a|e|i|o|u/ }

def double_consonants(str)
  str.chars.map { |char| CONSONANTS.include?(char.downcase) ? char * 2 : char }.join
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""