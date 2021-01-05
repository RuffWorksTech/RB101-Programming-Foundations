=begin
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.
=end

# Input:
# - Single string

# Output:
# - New string. All uppercase letters are lowercase, all lowercase letters are uppercase

# Rules:
# - Cannot use the .swapcase method

# EXAMPLES:
# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# DATA STRUCTURES:
# - String -> Array -> String

# ALGORITHM:
# - Split string into array
# - Map through array
#   - If a character is found in a lowercase collection, uppercase it.
#   - If a character is found in an uppercase collection, lowercase it.
# - Return array
  


def swapcase(str)
  str.chars.map do |char|
    if ('a'..'z').include?(char)
      char.upcase
    elsif ('A'..'Z').include?(char)
      char.downcase
    else
      char
    end
  end.join
end

test = "hello, I'm you FROM The FUture"
p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'
p swapcase(test)
p test