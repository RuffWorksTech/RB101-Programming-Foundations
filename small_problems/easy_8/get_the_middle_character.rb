### Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters. ###

# Input:
# - Single non-empty string

# Output:
# - The middle character(s) of the original string. 

# Rules:
# - If the the string has an odd length, return one character.
# - If the string has an even length, return two characters.

# EXAMPLES:
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# ALGORITHM:
# - Find index of middle character (string lenth / 2)
# - Check if str length is even or odd
#     - If odd, return character at that index - 1 (to account for starting at 0)
#     - If even, return the middle character plus one more


def center_of(str)
  str.length.odd? ? str[str.length / 2] : str[(str.length / 2) - 1, 2]
end


p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'