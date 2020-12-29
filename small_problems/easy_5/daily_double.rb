### Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!. ###

# Input:
# - Single string with one or more words

# Output:
# - Original string with all consecutive duplicate characters collapsed into a single character

# Rules:
# - Cannot use .squeeze or .squeeze!

# EXAMPLES:
# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# DATA STRUCTURES:
# - String -> Array -> String

# ALGORITHM:
# - Split string into array of words
# - Iterate through words
#     - Initialize counter
#     - Delete if index of counter == index of counter + 1
# - Join words back together

def crunch(str)
  str.split.map do |word|
    word.chars.each_with_object('') do |char, clean_word|
      clean_word << char if char != clean_word[-1]
    end
  end.join(' ')
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''