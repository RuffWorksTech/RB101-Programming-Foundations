### Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither. ###

# Input:
# - Single string

# Output:
# - Hash with three pairs:
#     - Number of lowercase letters
#     - Number of uppercase characters
#     - Number that are neither

# Rules:
# - All characters count, including spaces

# EXAMPLES:
# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# DATA STRUCTURES:
# - String -> Array -> Hash

# ALGORITHM:
# - Initialize lowercase counter
# - Initialize uppercase counter
# - Iterate through string
#     - If char is lowercase, increment counter += 1
#     - If char is uppercase, increment counter += 1
# - Initialize hash with uppercase, lowercase, and neither (neither = original string length - lowercase - uppercase)

def letter_case_count(str)
  lower = 0
  upper = 0
  str.each_char do |char|
    if ('a'..'z').include?(char)
      lower += 1
    elsif ('A'..'Z').include?(char)
      upper += 1
    end
  end
  counts =  {
    lowercase: lower, uppercase: upper, neither: (str.size - lower - upper)
  }
end


p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }