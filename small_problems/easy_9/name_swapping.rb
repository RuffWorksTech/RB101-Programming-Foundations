### Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name. ###

# Input:
# - Single string with two words, a first name and a last name separated by a space

# Output:
# - Single string with the original string reordered to be <last_name>, <first_name>

# EXAMPLE:
# swap_name('Joe Roberts') == 'Roberts, Joe'

# ALGORITHM:
# - Split string into array of words
# - Reverse the array
# - Join the array with ', ' delimiters

def swap_name(str)
  str.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'