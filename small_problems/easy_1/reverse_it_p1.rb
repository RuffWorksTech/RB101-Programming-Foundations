### Write a method that takes one argument, a string, and returns a new string with the words in reverse order. ###

# Input:
# - One string

# Output:
# - Original string with wordse in reverse order

# Rules:
# - Words are not reverse, only their order in the string as a whole
# - Words remain intact. No capitalization changes
# - No direction was given on periods. Ignore until further notice.

# EXAMPLES:

# puts reverse_sentence('') #== ''                                         # => true
# puts reverse_sentence('Hello World') #== 'World Hello'                   # => true
# puts reverse_sentence('Reverse these words') #== 'words these Reverse'   # => true


# DATA STRUCTURES:
# - Array, because we can easily convert words into elements


# ALGORITHM:
# - Create method that takes in one string as an argument
# - Split string into array with each word becoming an elements
# - Reverse the array
# - Join the array back together with spaces as delimiters


def reverse_sentence(string)
  string.split.reverse.join(' ')
end



p reverse_sentence('') == ''                                         # => true
p reverse_sentence('Hello World') == 'World Hello'                   # => true
p reverse_sentence('Reverse these words') == 'words these Reverse'   # => true