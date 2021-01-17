=begin
In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.
=end

# Input:
# - Single string

# Output:
# - A hash illustrating the percentage ratios of the lowercase, uppercase, and neither characters

# Rules:
# - The input string will always contain at least one character

# ALGORITHM:
# - Use method from previous exercise that outputted case counts
#     - Initialize variable that is total count of characters (float)
#     - Output count / total


def letter_case_count(str)
  lower = 0
  upper = 0
  total = str.size.to_f
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


def letter_percentages(str)
  total = str.size.to_f
  hash = letter_case_count(str)
  hash.each_key do |k|
    hash[k] = (hash[k] / total ) * 100
  end
  hash
end

puts letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }