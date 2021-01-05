### Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase. ###

# Input:
# - Single string

# Output:
# - New string that is the argument string in which every other character is capitalized

# Rules:
# - Non-alphabetic characters should be left unchanged, but they do count towards case swapping
# - First character is capitalized

# EXAMPLES:
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# DATA STRUCTURES:
# - String -> Array -> String

# ALGORITHM:
# - Initialize counter = 1
# - Split string in characters array
# - Map through array with indices
#     - If character is non-alphabetic, increment counter += 1, skip
#     - Else if counter is odd, upcase
#     - Else if counter is even, lowercase it
# - Return joined array

def staggered_case(str)
  str.chars.map.with_index { |char, idx| idx.even? ? char.upcase : char.downcase }.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'