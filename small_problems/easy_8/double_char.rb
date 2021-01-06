### Write a method that takes a string, and returns a new string in which every character is doubled. ###

# Input:
# - Single string with one or more words

# Output:
# - New string in which every character of the given string is doubled

# Rules:
# - All characters are doubled, even spaces

# EXAMPLES:
# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

# ALGORITHM:
# - Split string into an array for each character
# - Map through array
#     - Multiply each element by 2
# - Return joined array

def repeater(str)
  str.chars.map { |char| char * 2 }.join
end


p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''